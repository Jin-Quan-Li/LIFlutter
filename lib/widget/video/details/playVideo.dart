import 'package:flutter/material.dart';

import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget {
    @override
    _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
	Chewie chewie;
	VideoPlayerController videoPlayerController;
	ChewieController chewieController;
	@override
	void initState() {
		this.play(); //播放视频
		super.initState();
	}
	@override
	void dispose() {
		videoPlayerController.dispose(); //暂停播放
		chewieController.dispose();//暂停播放
		super.dispose();
	}
    @override
    Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("视频播放"),
			),
			body:Container(
				child: Column(
					children: <Widget>[
						this.chewie,
					],
				),
			)
		);
    }
	// 播放视频
	void play() {
		videoPlayerController = VideoPlayerController.network('https://vfx.mtime.cn/Video/2020/01/22/mp4/200122093938081064.mp4');
		chewieController = ChewieController(
			videoPlayerController: videoPlayerController,
			aspectRatio: 3 / 2,
			autoPlay: true,
			looping: true,
		);
		chewie = Chewie(
			controller: chewieController,
		);
	}
}