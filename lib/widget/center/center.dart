// 首页
import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title:Text("我的"),
				automaticallyImplyLeading: false, //设置没有返回按钮
			),
			body:CenterPage()
		);
	}
}

class CenterPage extends StatefulWidget {
	@override
	_CenterPageState createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
	@override
	Widget build(BuildContext context) {
		return Container(
			child: Center(
				child: Text("我的"),
			),
		);
	}
}