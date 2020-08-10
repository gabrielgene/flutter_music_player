import 'package:flutter/material.dart';
import 'package:flutter_music_player/widgets/cover.dart';
import 'package:flutter_music_player/widgets/play.dart';
import 'package:flutter_music_player/widgets/track.dart';

class Tracks {
  Tracks(
      {@required this.coverPath,
      @required this.title,
      @required this.subtitle,
      @required this.musicUrl});

  final coverPath;
  final title;
  final subtitle;
  final musicUrl;
}

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, -0.4),
        children: [
          Column(
            children: [
              Cover(imagePath: 'assets/stars.jpg'),
              MusicList(),
            ],
          ),
          PlayButton(),
        ],
      ),
    );
  }
}

class MusicList extends StatelessWidget {
  final data = [
    Tracks(
      coverPath: 'assets/rhcp.jpg',
      title: 'Californication',
      subtitle: 'RHCP · Californication',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/californication.mp3',
    ),
    Tracks(
      coverPath: 'assets/bytheway.jpg',
      title: 'By the Way',
      subtitle: 'RHCP · By the Way',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/bytheway.mp3',
    ),
    Tracks(
      coverPath: 'assets/dark.webp',
      title: 'Dark Necessities',
      subtitle: 'RHCP · The Getaway',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/darknecessities.mp3',
    ),
    Tracks(
      coverPath: 'assets/believer.jpg',
      title: 'Believer',
      subtitle: 'Imagine Dragons · Evolve',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/believer.mp3',
    ),
    Tracks(
      coverPath: 'assets/intheend.jpeg',
      title: 'In the End',
      subtitle: 'Linkin Park · Hybrid Theory',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/intheend.mp3',
    ),
    Tracks(
      coverPath: 'assets/bib.jpg',
      title: 'Back in Black',
      subtitle: 'AC/DC · Back in Black',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/backinblack.mp3',
    ),
    Tracks(
      coverPath: 'assets/sna.jpg',
      title: 'Seven nation army',
      subtitle: 'The White Stripes · Elephant',
      musicUrl:
          'https://raw.githubusercontent.com/gabrielgene/flutter_music_player/master/assets/sevennation.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: FractionalOffset(0.0, 0.0),
        color: Colors.lightBlue[50],
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                child: Text(
                  'Playlist',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                height: 460,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: data.length,
                  itemBuilder: (context, int index) {
                    return Track(
                      coverPath: data[index].coverPath,
                      title: data[index].title,
                      subtitle: data[index].subtitle,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
