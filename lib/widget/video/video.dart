import 'package:flutter/material.dart';
import './release.dart';
import './norelease.dart';

class Video extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return VideoPage();
	}
}

class VideoPage extends StatefulWidget {
	@override
	_VideoPage createState() => _VideoPage();
}

class _VideoPage extends State<VideoPage> 
	with SingleTickerProviderStateMixin {
	TabController _tabController; //需要定义一个Controller
	List tabs = ["正在热映", "即将上映"];

	@override
	void initState() {
		super.initState();
		// 创建Controller  
		_tabController = TabController(length: tabs.length, vsync: this);
	}
	@override
	Widget build(BuildContext context) {
		return Scaffold(
				appBar: PreferredSize(
					child: AppBar(
						flexibleSpace: SafeArea(
							child: TabBar(   //生成Tab菜单
								controller: _tabController,
								tabs: tabs.map((e) => Tab(text: e)).toList()
							),
						),
						automaticallyImplyLeading: false, //设置没有返回按钮
					),
					preferredSize: Size.fromHeight(48.0)
				),
				body: TabBarView(
					controller: _tabController,
					children: <Widget>[
						Release(),
						NoRelease()
					],
				),
			);
	}
}

