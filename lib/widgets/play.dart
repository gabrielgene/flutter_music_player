import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.pink[500],
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        '7 Songs · 25 mins',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      padding: EdgeInsets.fromLTRB(40, 1, 40, 1),
    );
  }
}
