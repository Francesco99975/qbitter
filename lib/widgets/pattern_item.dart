import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/helpers/failure.dart';
import 'package:qbitter/models/pattern.dart';
import 'package:qbitter/screens/patterns/pattern_form.dart';

class PatternItem extends StatelessWidget {
  final Pattern pattern;

  final Future<Either<Failure, Pattern>> Function() onDelete;

  const PatternItem({
    super.key,
    required this.pattern,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        title: Text(
          pattern.queryKeywords.join(','),
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(pattern.source),
        onTap: () =>
            context.pushNamed(PatternScreenForm.routePath, queryParameters: {
          'id': pattern.id,
          'source': pattern.source,
          'query': pattern.queryKeywords.join(","),
          'search': pattern.searchKeywords.join(","),
          'download': pattern.downloadPath,
          'period': pattern.period,
          'indicator': pattern.dayIndicator,
          'fireh': pattern.fireHour.toString(),
          'firem': pattern.fireMinute.toString(),
        }),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Theme.of(context).colorScheme.error,
              ),
              onPressed: () {
                _showConfirmationDialog(context, onDelete);
              },
            ),
          ],
        ),
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
