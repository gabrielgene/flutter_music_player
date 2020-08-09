import 'package:flutter/material.dart';
import 'package:flutter_music_player/screens/playlist.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PlaylistScreen(),
      },
    );
  }
}
