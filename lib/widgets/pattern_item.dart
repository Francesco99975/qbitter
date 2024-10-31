import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/constants/endpoints.dart';
import 'package:qbitter/constants/selectors.dart';
import 'package:qbitter/helpers/failure.dart';
import 'package:qbitter/helpers/network.dart';
import 'package:qbitter/models/pattern.dart';
import 'package:qbitter/providers/auth.dart';
import 'package:qbitter/screens/patterns/pattern_form.dart';
import 'package:qbitter/utils/decoder.dart';
import 'package:qbitter/utils/snackbar_service.dart';

class PatternItem extends ConsumerStatefulWidget {
  final Pattern pattern;
  final Future<fp.Either<Failure, Pattern>> Function() onDelete;

  static const _initialProgress = 0.00000000000000000000001;

  const PatternItem({
    super.key,
    required this.pattern,
    required this.onDelete,
  });

  @override
  ConsumerState<PatternItem> createState() => _PatternItemState();
}

class _PatternItemState extends ConsumerState<PatternItem> {
  double _progress = 0.0; // Initialize progress to 0.0
  Timer? _timer;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkProgress().then((progressAvailable) {
      if (progressAvailable) {
        _startProgressRequest();
      }
    }).catchError((error) {
      // Handle any errors that occur during the progress check
      // You can log the error or show an error message to the user
      if (kDebugMode) {
        print('Error checking progress: $error');
      }
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  Future<bool> _checkProgress() async {
    final network = ref.read(networkProvider);
    final server = await ref.read(authProvider.notifier).getServerUrl();

    return server.match((_) => Future.value(false), (baseUrl) {
      return network.match((_) => Future.value(false), (network) async {
        final response = await network.getRequest(
          url:
              "$baseUrl/${Endpoints.patternProgressEndpoint}/${widget.pattern.id}",
        );

        return response.match((_) => Future.value(false), (response) async {
          return decodeBody(response.body)
              .match((_) => Future.value(false), (_) => Future.value(true));
        });
      });
    });
  }

  Future<void> _startProgressRequest() async {
    final network = ref.read(networkProvider);
    final server = await ref.read(authProvider.notifier).getServerUrl();
    // Set a timer to request progress every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) async {
      server.match((l) {
        _timer?.cancel();
        SnackBarService.showNegativeSnackBar(
            context: context, message: l.message);
      }, (baseUrl) async {
        return network.match((l) {
          _timer?.cancel();
          SnackBarService.showNegativeSnackBar(
              context: context, message: l.message);
        }, (network) async {
          final response = await network.getRequest(
              url:
                  "$baseUrl/${Endpoints.patternProgressEndpoint}/${widget.pattern.id}");

          response.match((l) {
            _timer?.cancel();
            setState(() {
              _progress = 0.0;
            });
            SnackBarService.showNegativeSnackBar(
                context: context, message: l.message);
          }, (response) async {
            decodeBody(response.body).match((l) {
              _timer?.cancel();
              setState(() {
                _progress = 0.0;
              });
              SnackBarService.showNegativeSnackBar(
                  context: context, message: l.message);
            }, (jsonResponse) {
              double progress = (jsonResponse['progress'] as num).toDouble();

              if (progress == 1.0) {
                _timer?.cancel();
                setState(() {
                  _progress = 0.0;
                });
              } else if (progress == 0.0) {
                setState(() {
                  _progress = PatternItem._initialProgress;
                });
              } else {
                setState(() {
                  _progress = progress;
                });
              }
            });
          });
        });
      });
    });
  }

  Future<Either<Failure, String>> _startExecution() async {
    setState(() {
      _isLoading = true;
    });
    final network = ref.read(networkProvider);
    final server = await ref.read(authProvider.notifier).getServerUrl();

    return server.match((l) => Left(l), (baseUrl) async {
      return network.match((l) => Left(l), (network) async {
        final response = await network.getRequest(
          url:
              "$baseUrl/${Endpoints.patternExecutionEndpoint}/${widget.pattern.id}",
        );

        return response.match((l) => Left(l), (response) async {
          setState(() {
            _isLoading = false;
            _progress = PatternItem._initialProgress;
          });

          return Right(
              "Executing pattern ${widget.pattern.queryKeywords.join(", ")} ...");
        });
      });
    });
  }

  Future<void> _stopExecution() async {
    final network = ref.read(networkProvider);
    final server = await ref.read(authProvider.notifier).getServerUrl();

    // Cancel Timer
    _timer?.cancel();
    setState(() {
      _progress = 0.0;
    });
    server.match(
        (l) => SnackBarService.showNegativeSnackBar(
            context: context, message: l.message), (baseUrl) async {
      return network.match(
          (l) => SnackBarService.showNegativeSnackBar(
              context: context, message: l.message), (network) async {
        final response = await network.deleteRequest(
            url:
                "$baseUrl/${Endpoints.patternExecutionEndpoint}/${widget.pattern.id}");

        response.match(
            (l) => SnackBarService.showNegativeSnackBar(
                context: context, message: l.message), (response) async {
          SnackBarService.showPositiveSnackBar(
              context: context, message: "Execution Stopped");
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.pattern.queryKeywords.join(','),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                "${widget.pattern.source} - ${evaluatePerdiodString(widget.pattern.period, widget.pattern.dayIndicator)} at ${widget.pattern.fireHour}:${widget.pattern.fireMinute}"),
            onTap: () => context
                .pushNamed(PatternScreenForm.routePath, queryParameters: {
              'id': widget.pattern.id,
              'source': widget.pattern.source,
              'query': widget.pattern.queryKeywords.join(","),
              'search': widget.pattern.searchKeywords.join(","),
              'download': widget.pattern.downloadPath,
              'period': widget.pattern.period,
              'indicator': widget.pattern.dayIndicator,
              'fireh': widget.pattern.fireHour.toString(),
              'firem': widget.pattern.fireMinute.toString(),
            }),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _progress > 0.0 && !_isLoading
                    ? IconButton(
                        icon: Icon(
                          Icons.stop,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        onPressed: () async {
                          await _stopExecution();
                        },
                      )
                    : _isLoading
                        ? Container(
                            width: 48.0,
                            height: 48.0,
                            padding: const EdgeInsets.all(8.0),
                            child: const CircularProgressIndicator(
                              strokeWidth: 3.0,
                            ),
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            onPressed: () async {
                              (await _startExecution()).match(
                                  (l) => SnackBarService.showNegativeSnackBar(
                                      context: context,
                                      message: l.message), (message) async {
                                SnackBarService.showPositiveSnackBar(
                                    context: context, message: message);
                                await _startProgressRequest();
                              });
                            },
                          ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  onPressed: () {
                    _showConfirmationDialog(context, widget.onDelete);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          if (_progress > 0.0)
            LinearProgressIndicator(
              value: _progress,
              minHeight: 10,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary),
            ),
        ],
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, Function() onConfirm) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Removal"),
          content: const Text("Are you sure you want to remove this pattern?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () => {
                onConfirm(),
                Navigator.of(context).pop(),
              },
              child: const Text("Confirm Removal"),
            ),
          ],
        );
      },
    );
  }
}

String evaluatePerdiodString(String period, String indicator) {
  switch (period) {
    case "dayly":
      return "Every Day";
    case "weekly":
      final weekDay = Selectors.weekIndicators[indicator]!;
      return "Weekly on $weekDay";
    case "monthly":
      final dayOfMonth = indicator;
      return "Monthly on day $dayOfMonth";
    default:
      return "Unknown";
  }
}
