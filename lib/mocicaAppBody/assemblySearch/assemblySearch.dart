import 'package:flutter/material.dart';
import 'assemblySearchQuery.dart';

class AssemblySearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AssemblySearchQuery(),
        ],
      ),
    );
  }
}
