import 'package:flutter/material.dart';

enum Queries { upsertBook, deleteBook, getBook }

class MyBookPage extends StatefulWidget {
  const MyBookPage({super.key});

  @override
  State<MyBookPage> createState() => _MyBookPageState();
}

class _MyBookPageState extends State<MyBookPage> {
  Queries queriesView = Queries.upsertBook;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter/GraphQL/Codegen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SegmentedButton<Queries>(
                  showSelectedIcon: false,
                  segments: const <ButtonSegment<Queries>>[
                    ButtonSegment<Queries>(
                        value: Queries.upsertBook,
                        label: Text('Upsert'),
                        icon: UpsertIcon()),
                    ButtonSegment<Queries>(
                        value: Queries.getBook,
                        label: Text('Get'),
                        icon: Icon(Icons.download)),
                    ButtonSegment<Queries>(
                        value: Queries.deleteBook,
                        label: Text('Delete'),
                        icon: Icon(Icons.delete)),
                  ],
                  selected: <Queries>{queriesView},
                  onSelectionChanged: (Set<Queries> newSelection) {
                    setState(() {
                      // By default there is only a single segment that can be
                      // selected at one time, so its value is always the first
                      // item in the selected set.
                      queriesView = newSelection.first;
                    });
                  },
                ),
              ),
              const MyBookFormField()
            ],
          ),
        ),
      ),
    );
  }
}

class MyBookFormField extends StatefulWidget {
  const MyBookFormField({
    super.key,
  });

  @override
  State<MyBookFormField> createState() => _MyBookFormFieldState();
}

class _MyBookFormFieldState extends State<MyBookFormField> {
  InputDecoration _decoration(String value) => InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(value),
        hintText: value,
      );

  String _dateFormat(DateTime? date) {
    return date == null ? this.date : '${date.year}/${date.month}/${date.day}';
  }

  late String date;

  final List<String> _favoriteValues = ['yes', 'no', 'don\'t know'];
  String? _selectedFavorite = 'don\'t know';
  //TODO use method
  bool? _favoriteCase(String testCase) {
    switch (testCase) {
      case 'yes':
        return true;
      case 'no':
        return false;
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    date = _dateFormat(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: _decoration('id (optional, required to update)'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: _decoration('book number'),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextFormField(
                  decoration: _decoration('title'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: _decoration('read on:\n$date'),
                  canRequestFocus: false,
                  onTap: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 365)),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    setState(() {
                      date = _dateFormat(selectedDate);
                    });
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: DropdownButtonFormField<String>(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: _decoration('favorite'),
                  value: _selectedFavorite,
                  items: _favoriteValues.map((String favorite) {
                    return DropdownMenuItem<String>(
                      value: favorite,
                      child: Text(favorite),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedFavorite = newValue;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          OutlinedButton(onPressed: () {}, child: const Text('Submit')),
          const SizedBox(height: 8),
          const Divider(thickness: 2),
          //const Text('Tap to copy Id', textAlign: TextAlign.center),
          //decorate list view
          const SizedBox(height: 16),
          AspectRatio(
            aspectRatio: 3 / 2,
            child: InputDecorator(
              decoration: _decoration('GraphQL Activity (Tap to copy id)'),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text('jhj'),
                  ),
                  ListTile(
                    title: Text('jhj'),
                  ),
                  ListTile(
                    title: Text('jhj'),
                  ),
                  ListTile(
                    title: Text('jhj'),
                  ),
                  ListTile(
                    title: Text('jhj'),
                  ),
                  ListTile(
                    title: Text('jhj'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UpsertIcon extends StatelessWidget {
  const UpsertIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Icon(Icons.refresh),
        Icon(Icons.add, size: 12),
      ],
    );
  }
}
