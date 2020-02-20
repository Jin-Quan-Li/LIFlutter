import 'package:flutter/material.dart';

import 'dart:async';
import 'package:audioplayer/audioplayer.dart';


class MusicPlayer extends StatefulWidget {
    @override
    _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
	AudioPlayer audioPlayer;
	@override
	void initState() {
		super.initState();
		this.play();
		print("页面进入");
	}
	@override
	void dispose() {
		print("页面离开");
		this.pause();
		super.dispose();
	}
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
	Future play() async {
		audioPlayer = AudioPlayer();
		String url = "http://m10.music.126.net/20200220161124/fcf3a5d250d69627f350949080308d73/ymusic/5353/0f0f/0358/d99739615f8e5153d77042092f07fd77.mp3";
		await audioPlayer.play(url);
	}
	Future<void> pause() async {
		await audioPlayer.pause();
	}
}