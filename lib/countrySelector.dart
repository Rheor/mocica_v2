import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

class CountrySelector extends StatelessWidget {
  const CountrySelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flag.fromCode(
          FlagsCode.FR,
          height: 30,
          width: 50,
          fit: BoxFit.fill,
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.arrow_drop_down,
            size: 30,
          ),
        ),
      ],
    );
  }
}
