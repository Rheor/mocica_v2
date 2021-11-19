import 'package:flutter/material.dart';

class AssemblySearchDate extends StatelessWidget {
  const AssemblySearchDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text('Dates de prochaines réunions'),
      onPressed: () async {
        await showDateRangePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2500));
      },
      icon: Icon(Icons.calendar_today),
    );
  }
}
