import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Track extends StatelessWidget {
  Track(
      {@required this.coverPath,
      @required this.title,
      @required this.subtitle});

  final coverPath;
  final title;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
      height: 70,
      child: Row(
        children: [
          TrackPlayer(coverPath: coverPath),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

class TrackPlayer extends StatefulWidget {
  TrackPlayer({@required this.coverPath});
  final coverPath;
  @override
  _TrackPlayerState createState() =>
      _TrackPlayerState(coverPath: coverPath, musicUrl: kUrl1);
}

class _TrackPlayerState extends State {
  _TrackPlayerState({@required this.coverPath, @required this.musicUrl});

  final coverPath;
  final musicUrl;

  // stateData
  bool _play = false;
  AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
      height: 70,
      width: 70,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          alignment: const Alignment(0, 0),
          children: [
            Image(
              image: AssetImage(coverPath),
              fit: BoxFit.fill,
            ),
            IconButton(
              icon: Icon(_play ? Icons.stop : Icons.play_arrow),
              color: Colors.white,
              iconSize: 35,
              tooltip: 'Play and pause music',
              onPressed: () => _toogle(),
            ),
          ],
        ),
      ),
    );
  }

  Future<int> _toogle() async {
    if (!_play) {
      final result = await _audioPlayer.play(musicUrl, position: null);
      if (result == 1) setState(() => _play = !_play);
      return result;
    } else {
      final result = await _audioPlayer.pause();
      if (result == 1) setState(() => _play = !_play);
      return result;
    }
  }
}
