import 'package:flutter/material.dart';

class More extends StatefulWidget {
	@override
	_MoreState createState() => _MoreState();
}

class _MoreState extends State<More> 
	with SingleTickerProviderStateMixin {
	TabController _tabController; //需要定义一个Controller
	List tabs = ["排行榜", "热门歌单","热门歌手","MV排行"];

	@override
	void initState() {
		super.initState();
		// 创建Controller  
		_tabController = TabController(length: tabs.length, vsync: this);
	}
	@override
	Widget build(BuildContext context) {
		return Scaffold(
				// appBar: PreferredSize(
				// 	child: AppBar(
				// 		flexibleSpace: SafeArea(
				// 			child: TabBar(   //生成Tab菜单
				// 				controller: _tabController,
				// 				tabs: tabs.map((e) => Tab(text: e)).toList()
				// 			),
				// 		),
				// 		automaticallyImplyLeading: false, //设置没有返回按钮
				// 	),
				// 	preferredSize: Size.fromHeight(48.0)
				// ),
				appBar: AppBar(
					title: Text("详情"),
					bottom: TabBar(
						controller: _tabController,
						tabs: tabs.map((e) => Tab(text: e)).toList()
					),
				),
				body: TabBarView(
					controller: _tabController,
					children: <Widget>[
						DataList(title:"排行榜"),
						DataList(title:"热门歌单"),
						DataList(title:"热门歌手"),
						DataList(title:"MV排行")
					],
				),
			);
	}
}

class DataList extends StatefulWidget {
	DataList({Key key, this.title}) : super(key: key);
  	final String title;
	@override
	_DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
	@override
	Widget build(BuildContext context) {
		return GridView.count( 
					crossAxisCount: 3,
					childAspectRatio: 0.9,
					padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
					children: [1,2,3,4,5,6,7,8,9].map((item){
						return GestureDetector(
							onTap: () => Navigator.pushNamed(context, "musicDetails",arguments: "我是传过去的参数"),//跳转详情
							child: Column(
								children: <Widget>[
									ClipRRect(
										borderRadius: BorderRadius.circular(4),
										child:Image.network(
											"https://tpc.googlesyndication.com/simgad/4097515285375806291?sqp=4sqPyQQrQikqJwhfEAEdAAC0QiABKAEwCTgDQPCTCUgAUAFYAWBfcAJ4AcUBLbKdPg&rs=AOga4qmw_XFnqiKb7bxA_16NNgNFj3NDMw",
											fit:BoxFit.cover,
											width: 116.0,
											height: 116.0,
										),
									),
									Padding(
										padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
										child: Text(widget.title),
									)
								],
							),
						);
					}).toList()
			);
	}
}
