import 'package:flutter/material.dart';
import 'assemblySearch/assemblySearch.dart';
import 'raccourcis/raccourcis.dart';
import 'profil/pageStatistics.dart';

class MocicaAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFdbe6a2),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          Expanded(flex: 2, child: Raccourcis()),
          Expanded(flex: 6, child: AssemblySearch()),
          Expanded(flex: 2, child: PageStatistics()),
        ],
      ),
    );
  }
}
