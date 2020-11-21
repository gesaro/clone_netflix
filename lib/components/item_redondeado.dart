import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/img/inception.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/img/inzo.png',
              width: 70,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
