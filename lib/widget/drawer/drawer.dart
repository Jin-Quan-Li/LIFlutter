
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
	const MyDrawer({
		Key key,
	}) : super(key: key);
	final ImgUrl = 'https://wx.qlogo.cn/mmopen/vi_32/xtJibpx6kthhzLwXzvUKWwcBhDlkIKRhtzgzuPYFkMYia0SNewkeDQ2KaoTCibWiclJFbBhD7lx3GNTVmpSssq10ww/132';
	@override
	Widget build(BuildContext context) {
		return Drawer(
			child: MediaQuery.removePadding(
				context: context,
				//移除抽屉菜单顶部默认留白
				removeTop: true,
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						Container(
							width: MediaQuery.of(context).size.width,
							height: 200,
							color: Colors.blueAccent,
							child: Padding(
								padding:EdgeInsets.only(top:24.0),
								child:Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisAlignment: MainAxisAlignment.center,
									children: <Widget>[
										ClipOval(
											child:Image.network(
												ImgUrl,
												height: 100.0,
												width: 100.0,
												fit: BoxFit.cover
											),
										),
										Padding(
											padding: EdgeInsets.only(top:10.0),
											child: Text(
												"一棵小草",
												style:TextStyle(
													fontSize: 20,
													color: Color.fromARGB(255, 255, 255, 255),
												),
											),
										),
									],
								)
							),
						),
						Expanded(
							child: ListView(
								children:ListTile.divideTiles(
									context: context,
									tiles:[
										ListTile(
											title:Text("音乐"),
											trailing: Icon(Icons.keyboard_arrow_right),
											onTap: () {
												print("点击事件!");
											},
											onLongPress: (){
												print("长安事件!");
												// do something else
											},
										),
										ListTile(
											title:Text("视频"),
											trailing: Icon(Icons.keyboard_arrow_right),
											onTap: () {
												// do something
											},
											onLongPress: (){
												// do something else
											},
										)
									]
								).toList(),
							),
						)
					],
				),
			),
		);
	}
}
