import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/img/inception.jpg',
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
