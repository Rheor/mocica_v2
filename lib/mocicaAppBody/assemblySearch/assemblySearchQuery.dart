import 'package:flutter/material.dart';
import 'assemblySearchInput.dart';
import 'assemblySearchSkillSet.dart';
import 'assemblySearchDates.dart';

class AssemblySearchQuery extends StatelessWidget {
  const AssemblySearchQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            'Recherche d\'assemblées',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        AssemblySearchInput(),
        Row(
          children: [
            Expanded(
              child: AssemblySearchSkillSet(),
            ),
            Expanded(
              child: AssemblySearchDate(),
            ),
          ],
        ),
      ],
    );
  }
}
