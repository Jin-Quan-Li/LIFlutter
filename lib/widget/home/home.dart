// 首页
import 'package:flutter/material.dart';
import './swiper.dart';
import './listData.dart';

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title:Text("音乐"),
				automaticallyImplyLeading: false, //设置没有返回按钮
			),
			body:HomePage()
		);
	}
}

class HomePage extends StatefulWidget {
	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	@override
	Widget build(BuildContext context) {
		return 	SingleChildScrollView(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							SwiperImage(), //轮播图
							ListData(),//数据
						],
					),
			);
	}
}
