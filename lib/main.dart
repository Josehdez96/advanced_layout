import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);

  Color? _getRowColor(Set<MaterialState> states, int index) {
    if (states.contains(MaterialState.selected)) {
      return Colors.red;
    }
    if (index.isEven) {
      return Colors.grey.withOpacity(0.3);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: DataTable(
            columns: const [
              DataColumn(
                label: Text('Number'),
              ),
            ],
            rows: List<DataRow>.generate(
              numItems,
              (index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                  (states) => _getRowColor(states, index),
                ),
                cells: [
                  DataCell(
                    Text('Row $index'),
                  ),
                ],
                selected: selected[index],
                onSelectChanged: (value) {
                  setState(() {
                    selected[index] = value!;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
