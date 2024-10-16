import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/constants/selectors.dart';
import 'package:qbitter/providers/patterns.dart';
import 'package:qbitter/utils/snackbar_service.dart';
import 'package:qbitter/models/pattern.dart';

class PatternScreenForm extends ConsumerStatefulWidget {
  static const routePath = "/pattern/new";

  final String? id;
  final String? source;
  final List<String>? query;
  final List<String>? search;
  final String? download;
  final String? period;
  final String? indicator;
  final TimeOfDay? fire;

  const PatternScreenForm({
    super.key,
    this.id,
    this.source,
    this.query,
    this.search,
    this.download,
    this.period,
    this.indicator,
    this.fire,
  });

  @override
  ConsumerState<PatternScreenForm> createState() => _PatternScreenFormState();
}

class _PatternScreenFormState extends ConsumerState<PatternScreenForm> {
  final _formKey = GlobalKey<FormState>();
  late String _id;
  late String _selectedSource;
  late TextEditingController _queryController;
  late TextEditingController _searchController;
  late TextEditingController _downloadController;
  late String _selectedPeriod;
  late String _selectedIndicator;
  late TimeOfDay _fire;

  @override
  void initState() {
    super.initState();
    _id = widget.id ?? '';
    _selectedSource = widget.source ?? '';
    _queryController = TextEditingController(text: widget.query?.join(','));
    _searchController = TextEditingController(text: widget.search?.join(','));
    _downloadController = TextEditingController(text: widget.download ?? '');
    _selectedPeriod = widget.period ?? '';
    _selectedIndicator = widget.indicator ?? '-1';
    _fire = widget.fire ?? TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: context.pop,
        ),
        title: Text(_id.isEmpty ? 'New Pattern' : 'Edit Pattern'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButton<String>(
                    value: Selectors.sources.keys.toList()[0],
                    items: Selectors.sources.values
                        .mapWithIndex<DropdownMenuItem<String>>(
                            (label, index) => DropdownMenuItem<String>(
                                  value: Selectors.sources.keys.toList()[index],
                                  child: Text(label),
                                ))
                        .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _selectedSource = value;
                        });
                      }
                    }),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _queryController,
                  decoration:
                      const InputDecoration(labelText: 'Query Keywords'),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _searchController,
                  decoration:
                      const InputDecoration(labelText: 'Search Keywords'),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _downloadController,
                  decoration: const InputDecoration(labelText: 'Download Path'),
                ),
                const SizedBox(height: 16),
                DropdownButton<String>(
                    value: Selectors.periods.keys.toList()[0],
                    items: Selectors.periods.values
                        .mapWithIndex<DropdownMenuItem<String>>(
                            (label, index) => DropdownMenuItem<String>(
                                  value: Selectors.periods.keys.toList()[index],
                                  child: Text(label),
                                ))
                        .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _selectedPeriod = value;
                        });
                      }
                    }),
                const SizedBox(height: 16),
                if (_selectedPeriod == Selectors.periods.keys.toList()[2])
                  DropdownButton<String>(
                      value: Selectors.weekIndicators.keys.toList()[0],
                      items: Selectors.weekIndicators.values
                          .mapWithIndex<DropdownMenuItem<String>>(
                              (label, index) => DropdownMenuItem<String>(
                                    value: Selectors.weekIndicators.keys
                                        .toList()[index],
                                    child: Text(label),
                                  ))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedIndicator = value;
                          });
                        }
                      }),
                if (_selectedPeriod == Selectors.periods.keys.toList()[1])
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Select a Day',
                      border: OutlineInputBorder(),
                    ),
                    value: "1",
                    items:
                        List.generate(28, (index) => index + 1).map((int day) {
                      return DropdownMenuItem<String>(
                        value: day.toString(),
                        child: Text(day.toString()),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedIndicator = newValue!;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Please select a day';
                      }
                      return null;
                    },
                  ),
                const SizedBox(height: 16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Selected time: ${_fire.format(context)}',
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () => _selectTime(context),
                      child: const Text('Choose Time'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _submitForm,
                  child:
                      Text(_id.isEmpty ? 'Create Pattern' : 'Update Pattern'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _fire) {
      setState(() {
        _fire = picked;
      });
    }
  }

  Future<void> _submitForm() async {
    try {
      if (_formKey.currentState!.validate()) {
        final pattern = Pattern(
            id: _id,
            source: _selectedSource.trim(),
            queryKeywords: _queryController.text.trim().split(" "),
            searchKeywords: _searchController.text.trim().split(" "),
            downloadPath: _downloadController.text.trim(),
            period: _selectedPeriod,
            dayIndicator: _selectedIndicator,
            fireTime: DateTime(
              DateTime.now().year,
              DateTime.now().month,
              DateTime.now().day,
              _fire.hour,
              _fire.minute,
            ));

        final response = _id.isEmpty
            ? await ref.read(patternsProvider.notifier).add(pattern)
            : await ref.read(patternsProvider.notifier).updateProduct(pattern);

        response.match(
            (l) => SnackBarService.showNegativeSnackBar(
                context: context, message: l.message), (r) {
          SnackBarService.showPositiveSnackBar(
              context: context,
              message:
                  "${r.queryKeywords.take(3).join(",")} ${widget.id == null ? 'added to patterns' : 'updated'} successfully");

          Navigator.pop(context);
        });
      } else {
        SnackBarService.showNegativeSnackBar(
            context: context, message: "Invalid Data");
      }
    } catch (e) {
      if (mounted) {
        SnackBarService.showNegativeSnackBar(
            context: context, message: "Something went wrong: ${e.toString()}");
      }
    }
  }

  @override
  void dispose() {
    _downloadController.dispose();
    _queryController.dispose();
    _searchController.dispose();
    super.dispose();
  }
}
