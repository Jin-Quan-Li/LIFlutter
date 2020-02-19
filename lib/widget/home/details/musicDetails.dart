import 'package:flutter/material.dart';

class MusicDetails extends StatefulWidget {
	@override
	_MusicDetailsState createState() => _MusicDetailsState();
}

class _MusicDetailsState extends State<MusicDetails> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("歌单"),
			),
			body:ListView(
				physics: const NeverScrollableScrollPhysics(),
				children: <Widget>[
					Column(
						children: <Widget>[
							Stack(
								alignment: FractionalOffset(0,1),
								children: <Widget>[
									BasicData(),
									ItemMusic()
								],
							)
						],
					)
				],
			)
			
		);
	}
}

class BasicData extends StatefulWidget {
	@override
	_BasicDataState createState() => _BasicDataState();
}

class _BasicDataState extends State<BasicData> {
	@override
	Widget build(BuildContext context) {
		return Container(
			height: MediaQuery.of(context).size.height,
			color: Colors.red,
			child:Container(
				color: Colors.blueAccent,
				padding: EdgeInsets.all(10.0),
				child: Column(
					children: <Widget>[
						Row(
							children: <Widget>[
								ClipRRect(
										borderRadius: BorderRadius.circular(4),
										child:Image.network(
											"https://img-blog.csdnimg.cn/20190918140145169.png",
											width: 130,
											height: 130,
											fit:BoxFit.cover,
										),
									),
								Expanded(
									child:Padding(
										padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: <Widget>[
												Text("云音乐飙升榜",style: TextStyle(height:1.8,color: Color.fromARGB(255, 255, 255, 255),fontSize: 20,fontWeight: FontWeight.w600),),
												Text("网易云音乐",style: TextStyle(height:1.8,color: Color.fromARGB(255, 255, 255, 255),fontSize: 14)),
												Padding(
													padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
													child: Text(
														"云音乐中每天热度上升罪魁的100首单曲，每日更新云音乐中每天热度上升罪魁的100首单曲，每日更新云音乐中每天热度上升罪魁的100首单曲，每日更新",
														maxLines: 2,
														softWrap:true,
														overflow: TextOverflow.ellipsis,
														style: TextStyle(height:1.4,color: Color.fromARGB(255, 255, 255, 255),fontSize: 14),),
												)
											],
										),
									) ,
								)
							],
						),
						Padding(
							padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
							child: Row(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: <Widget>[
									Column(
										children: <Widget>[
											Icon(
												Icons.share,
												color: Color.fromARGB(255, 255, 255, 255),
											),
											Text('100',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 255, 255, 255)),)
										],
									),
									Column(
										children: <Widget>[
											Icon(
												Icons.play_arrow,
												color: Color.fromARGB(255, 255, 255, 255),
											),
											Text('100',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 255, 255, 255)),)
										],
									),
									Column(
										children: <Widget>[
											Icon(
												Icons.insert_comment,
												color: Color.fromARGB(255, 255, 255, 255),
											),
											Text('100',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 255, 255, 255)),)
										],
									),
									Column(
										children: <Widget>[
											Icon(
												Icons.cloud_download,
												color: Color.fromARGB(255, 255, 255, 255),
											),
											Text('下载',style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 255, 255, 255)),)
										],
									),
								],
							),
						)
					],
				),
			)
		);
	}
}

// 列表
class ItemMusic extends StatefulWidget {
	@override
	_ItemMusicState createState() => _ItemMusicState();
}

class _ItemMusicState extends State<ItemMusic> {
	@override
	Widget build(BuildContext context) {
		return Container(
			height: 480.0,
			decoration: BoxDecoration(
				borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0)),
				color: Color.fromARGB(255, 255, 255, 255),
			),
			child: ListView(
				padding: EdgeInsets.fromLTRB(0, 0, 0, 80.0),
				children:ListTile.divideTiles(
					context: context,
					tiles:[1,2,3,4,5,6,7,8,9,10,11].map((item){
						return ListTile(
								title:Text("勇气"),
								leading:Text("1",style: TextStyle(
									height: 2.2,
									fontSize: 16,
									fontWeight: FontWeight.w600,
									color: Color.fromARGB(250, 238, 153, 34)
								),),
								trailing: Icon(Icons.play_circle_outline),
								onTap: () {
									print("点击事件!");
                  					Navigator.pushNamed(context, "musicPlayer",arguments: "我是传过去的参数");
								},
								onLongPress: (){
									print("长安事件!");
									// do something else
								},
							);
					}).toList()
				).toList()
			),
		);
	}
}