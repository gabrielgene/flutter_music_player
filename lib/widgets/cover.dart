import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  Cover({@required this.imagePath});
  final imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        Container(
          color: Colors.amber,
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Text(
              'Coding',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        )
      ],
    );
  }
}
