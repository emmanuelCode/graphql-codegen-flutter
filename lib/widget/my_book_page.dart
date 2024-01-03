import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_codegen_flutter/graphql_client.dart';
import 'package:graphql_codegen_flutter/model/my_book.dart';

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
              MyBookFormField(querySelected: queriesView)
            ],
          ),
        ),
      ),
    );
  }
}

class MyBookFormField extends ConsumerStatefulWidget {
  final Queries querySelected;
  const MyBookFormField({
    required this.querySelected,
    super.key,
  });

  @override
  ConsumerState<MyBookFormField> createState() => _MyBookFormFieldState();
}

class _MyBookFormFieldState extends ConsumerState<MyBookFormField> {
  final idField = 'id (optional, required to update)';
  final activityField = 'GraphQL Activity (Tap to copy id)';
  late bool enabled;
  InputDecoration _decoration(String value) {
    // check which category where in and disable fields
    enabled = (idField == value || activityField == value)
        ? true
        : widget.querySelected == Queries.upsertBook;
    return InputDecoration(
      border: const OutlineInputBorder(),
      label: Text(value),
      hintText: value,
      enabled: enabled,
    );
  }

  // variables for date picker field
  late DateTime? currentDate;
  late String _selectedDate = _dateFormat(DateTime.now());

  String _dateFormat(DateTime? date) {
    currentDate = date;
    return date == null
        ? _selectedDate
        : '${date.year}/${date.month}/${date.day}';
  }

  // variables for dropdown favorite field
  final List<String> _favoriteValues = ['yes', 'no', '???'];
  late String _selectedFavorite = _favoriteValues.last;

  bool? _favoriteCase(String testCase) {
    switch (testCase) {
      case 'yes':
        return true;
      case 'no':
        return false;
      default:
        return null;
    }
  }

  String? _favoriteFormat(bool? value) {
    switch (value) {
      case true:
        return 'yes';
      case false:
        return 'no';
      default:
        return '???';
    }
  }

  // variables for the id/bookNumber/title fields
  final TextEditingController _textEditId = TextEditingController();
  final TextEditingController _textEditBookNumber = TextEditingController();
  final TextEditingController _textEditTitle = TextEditingController();

  // riverpod variables for queries and activity list
  late final _graphQLClient = ref.watch(graphQLClientProvider);
  late final _myBookQueries =
      ref.watch(MyBookQueriesProvider(_graphQLClient).notifier);
  late List<MyBook> _myBookList = _myBookQueries.myBookListActivity;
  late final List<String> _requestTypeList =
      _myBookQueries.graphQLActivityListType;
  void _updateList() =>
      setState(() => _myBookList = _myBookQueries.myBookListActivity);

  // empty field checker for title/bookNumber TODO verify isEmpty
  String? _emptyFieldValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a value';
    }
    return null;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration:
                        _decoration('id (optional, required to update)'),
                    controller: _textEditId,
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
                    controller: _textEditBookNumber,
                    validator: _emptyFieldValidator,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: _decoration('title'),
                    controller: _textEditTitle,
                    validator: _emptyFieldValidator,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: _decoration('read on:\n$_selectedDate'),
                    canRequestFocus: false,
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        firstDate:
                            DateTime.now().subtract(const Duration(days: 365)),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                      );
                      setState(() => _selectedDate = _dateFormat(selectedDate));
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
                    onChanged: enabled
                        ? (String? newValue) {
                            setState(() => _selectedFavorite = newValue!);
                          }
                        : null,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () async {
                FocusScope.of(context).unfocus(); // disable keyboard
                if (_formKey.currentState!.validate()) {
                  switch (widget.querySelected) {
                    case Queries.upsertBook:
                      await _myBookQueries.upsertBook(
                        id: _textEditId.text.isEmpty ? null : _textEditId.text,
                        bookNumber: int.parse(_textEditBookNumber.text),
                        title: _textEditTitle.text,
                        readOn: currentDate!,
                        favorite: _favoriteCase(_selectedFavorite),
                      );
                      _updateList();
                      break;
                    case Queries.getBook:
                      await _myBookQueries.getBook(id: _textEditId.text);
                      _updateList();
                      break;
                    case Queries.deleteBook:
                      await _myBookQueries.deleteBook(id: _textEditId.text);
                      _updateList();
                      break;
                  }
                }
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 8),
            const Divider(thickness: 2),
            const SizedBox(height: 16),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: InputDecorator(
                decoration: _decoration('GraphQL Activity (Tap to copy id)'),
                child: _myBookList.isEmpty
                    ? const Center(child: Text('NO DATA'))
                    : ListView.separated(
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: _myBookList.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                            ListTile(
                                leading: Text(_requestTypeList[index]),
                                title: Text(
                                    'Nº:${_myBookList[index].bookNumber} ❘ ${_myBookList[index].title}'),
                                subtitle: Text(
                                  'ID:${_myBookList[index].id}\n${_dateFormat(_myBookList[index].readOn)}',
                                ),
                                trailing: Text(
                                    'Fav:${_favoriteFormat(_myBookList[index].favorite)}'),
                                onTap: () async {
                                  // copy id
                                  await Clipboard.setData(
                                    ClipboardData(text: _myBookList[index].id),
                                  ).then(
                                    (value) => ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                      const SnackBar(
                                        content: Text('copied id to clipboard'),
                                      ),
                                    ),
                                  );
                                }),
                      ),
              ),
            ),
          ],
        ),
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
