
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class ListData extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: ["排行榜","热门歌单","热门歌手","MV排行"].map((item){
				return ItemView(title:item);
			}).toList(),
		);
	}
}

class ItemView extends StatefulWidget {
	ItemView({Key key, this.title}) : super(key: key);
  	final String title;
	@override
	_ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
	@override
	Widget build(BuildContext context) {
		return 	
			Container(
				padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						Padding(
							padding: EdgeInsets.fromLTRB(0, 16, 0, 10),
							child: Row(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件的排列方式为主轴两端对齐
								children: <Widget>[
									Text(widget.title),
									GestureDetector(
										onTap: () => Navigator.pushNamed(context, "more",arguments: "我是传过去的参数"),//跳转详情
												// Fluttertoast.showToast(
												// 	msg: "查看更多",
												// 	toastLength: Toast.LENGTH_SHORT,
												// 	gravity: ToastGravity.CENTER,
												// 	timeInSecForIos: 1,
												// 	backgroundColor:Color.fromARGB(255, 0, 0, 0),
												// 	textColor: Color.fromARGB(255, 255, 255, 255),
												// 	fontSize: 16.0
												// ),//跳转详情
										child: Row(
											mainAxisAlignment:MainAxisAlignment.spaceBetween,
											children: <Widget>[
												Text("查看更多"),
												Icon(Icons.keyboard_arrow_right)
											],
										),
									)
								],
							),
						),
						GridLayout()
					],
				),
			);
	}
}

class GridLayout extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		List<Widget> Item = [];//先建一个数组用于存放循环生成的widget
		// Widget content; //单独一个widget组件，用于返回需要生成的内容widget
		for (int i = 0; i < 6; i++) {
			Item.add(
				GestureDetector(
					onTap: () => Navigator.pushNamed(context, "musicDetails",arguments: "我是传过去的参数"),//跳转详情
					child:Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						mainAxisAlignment: MainAxisAlignment.start,
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
								child: Text("名称"),
							)
						],
					),
				)
			);
		}
		return Container(
				decoration:BoxDecoration(
					border:Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0))
				),
				height: 326,
				padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
				child: GridView.count(
					padding: EdgeInsets.all(0.0),
					crossAxisSpacing:10.0,
					mainAxisSpacing: 10.0,
					crossAxisCount: 3,
					childAspectRatio: 0.8,
					physics: const NeverScrollableScrollPhysics(),
					children: Item
				),
		);
  	}
}