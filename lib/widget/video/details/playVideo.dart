import 'package:flutter/material.dart';

class PlayVideo extends StatefulWidget {
    @override
    _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
    @override
    Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("视频播放"),
			),
			body:Center(
				child: Text("视频播放"),
			)
		);
    }
}