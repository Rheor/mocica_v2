import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Color(0xFF96c11e),
            child: Column(
              children: [
                Text('MON PROFIL'),
                Container(
                  width: 90,
                  height: 90,
                  alignment: FractionalOffset.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      300,
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFffc000),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextButton.icon(
                  icon: Icon(Icons.message),
                  label: Text('Mes Messages privé'),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton.icon(
                  icon: Icon(Icons.calendar_today),
                  label: Text('Mes réunions'),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton.icon(
                  icon: Icon(Icons.rule),
                  label: Text('Mes suggestions'),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
