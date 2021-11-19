import 'package:flutter/material.dart';

class AssemblySearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        initialValue: 'Paris',
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          suffix: TextButton.icon(
            icon: Icon(Icons.search),
            label: Text('Chercher'),
            onPressed: () => {},
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Color(0xFF96c11e),
              padding: EdgeInsets.all(15),
              textStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
