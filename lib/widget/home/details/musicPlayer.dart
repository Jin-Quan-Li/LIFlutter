import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
    @override
    _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
    @override
    Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title:Text("播放")
			),
			body: Container(
				child: Text("音乐播放器"),
			),
		);
    }
}