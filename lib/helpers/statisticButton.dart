import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class StatisticButton extends StatelessWidget {
  final String label;
  final String count;

  const StatisticButton({Key? key, required this.label, required this.count})
      : super(key: key);

  _getButtonContent() {
    print(label);
    print(count);
    return '${this.label} [${this.count}]';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: Text(_getButtonContent()),
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(15),
          primary: Colors.white,
          backgroundColor: Color(0xFF0b5772),
        ),
      ),
    );
  }
}
