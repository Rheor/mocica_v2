import 'package:flutter/material.dart';
import './searchBar.dart';
import './countrySelector.dart';

class MocicaAppBar extends StatelessWidget implements PreferredSizeWidget {
  late AppBar appBar;

  @override
  Size get preferredSize => appBar.preferredSize;

  MocicaAppBar() {
    appBar = AppBar(
      backgroundColor: Color(0xFF0b5772),
      shadowColor: Colors.black,
      elevation: 8,
      leading: IconButton(
        icon: Icon(
          Icons.home,
          size: 40,
        ),
        tooltip: 'Home Page',
        onPressed: () => {},
        color: Colors.black,
      ),
      actions: [
        SearchBar(),
        CountrySelector(),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.menu, size: 40),
        )
      ],
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return appBar;
  }
}
