import 'package:flutter/material.dart';
import 'assemblySearchQuery.dart';
import 'assemblySearchResult.dart';

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
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // <= second choice
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround, // <= gucchi
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.start, // <= third choice
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AssemblySearchQuery(),
          AssemblySearchResult(),
        ],
      ),
    );
  }
}
