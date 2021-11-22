import 'package:flutter/material.dart';

class AssemblySearchResult extends StatelessWidget {
  static const List<String> columnHeader = [
    'Nom',
    'Adresse',
    'Coordinateur',
    'Date',
  ];

  static const List<Map<String, String>> resultData = [
    {
      'Nom': 'Paris Mocica',
      'Adresse': 'Paris',
      'Coordinateur': 'Laurent',
      'Date': '24 nov',
    },
    {
      'Nom': 'Bayonne Mocica',
      'Adresse': 'Paris',
      'Coordinateur': 'François',
      'Date': '24 nov',
    },
    {
      'Nom': 'Bordeaux Mocica',
      'Adresse': 'Paris',
      'Coordinateur': 'Augustin',
      'Date': '24 nov',
    },
    {
      'Nom': 'Montpellier Mocica',
      'Adresse': 'Paris',
      'Coordinateur': 'Cyril',
      'Date': '25 nov',
    }
  ];

  const AssemblySearchResult({Key? key}) : super(key: key);

  _getResultDataRows() {
    List<DataRow> result = resultData
        .map((Map<String, String> singleRowData) => DataRow(cells: [
              DataCell(Row(children: [
                Icon(Icons.label),
                Text(singleRowData['Nom'] ?? '')
              ])),
              DataCell(Row(children: [
                Icon(Icons.gps_fixed_rounded),
                Text(singleRowData['Adresse'] ?? '')
              ])),
              DataCell(Row(children: [
                Icon(Icons.person),
                Text(singleRowData['Coordinateur'] ?? '')
              ])),
              DataCell(Row(children: [
                Icon(Icons.calendar_today),
                Text(singleRowData['Date'] ?? '')
              ])),
            ]))
        .toList();

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            'Résultats',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
            color: Colors.green,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.contain,
              child: DataTable(
                dataRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected))
                    return Color(0xFF96c11e);
                  return Color(0xFFdbe6a2);
                }),
                headingRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected))
                    return Color(0xFF96c11e);
                  return Color(0xFFdbe6a2);
                }),
                columns: columnHeader
                    .map((columnName) => DataColumn(label: Text(columnName)))
                    .toList(),
                rows: _getResultDataRows(),
              ),
            )
            // constraints: BoxConstraints.expand(),
            ),
      ],
    );
  }
}
