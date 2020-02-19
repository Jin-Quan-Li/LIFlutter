import 'package:flutter/material.dart';

class VideoDetails extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: PreferredSize(
				preferredSize: Size.fromHeight(174.0),
				child:Padding(
					padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
					child: HeadImage(),
				)
			),
			body:Stack(
				children: <Widget>[
					Container(
						height: MediaQuery.of(context).size.height,
						padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
						child: Details(),
					),
					Positioned(
						bottom: 0,
						left: 0,
						child: Container(
							height: 50.0,
							width: MediaQuery.of(context).size.width,
							color: Color.fromARGB(250, 238, 153, 34),
							child: Row(
								mainAxisAlignment: MainAxisAlignment.center,
								crossAxisAlignment: CrossAxisAlignment.center,
								children: <Widget>[
									Text("选座购票",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontSize: 16),)
								],
							),
						)
					)
				],
			)
		);
	}
}

class Details extends StatefulWidget {
	@override
	_DetailsState createState() => _DetailsState();
}

// 根组件
class _DetailsState extends State<Details> {
	@override
	Widget build(BuildContext context) {
		//获取路由参数  
    	// var args = ModalRoute.of(context).settings.arguments;
		return 	SingleChildScrollView(
					child: Column(
					children: <Widget>[
						// 基本信息
						Container(
							decoration:BoxDecoration(
								border:Border(bottom: BorderSide(color: Colors.grey[200],width: 10.0))
							),
							child: VideoBasisData(),
						),
						// 描述
						Container(
							padding: EdgeInsets.all(10.0),
							decoration:BoxDecoration(
								border:Border(bottom: BorderSide(color: Colors.grey[200],width: 10.0)),
								color: Color.fromARGB(255, 255, 255, 255),
							),
							child: Text(
								"剧情：电影《为国而歌》以人民音乐家聂耳成长并创作《义勇军进行曲》为主线，讲述了一群心系祖国命运的文化英雄，用热血谱写中华民族最强音《义勇军进行曲》的故事。",
								style: TextStyle(
									fontSize: 14,
									height: 1.6
								),
							),
						),
						// 演员表
						Container(
							padding: EdgeInsets.all(10.0),
							decoration:BoxDecoration(
								border:Border(bottom: BorderSide(color: Colors.grey[200],width: 10.0)),
								color: Color.fromARGB(255, 255, 255, 255),
							),
							child: ActorTable(title:"导演"),
						),
						// 演员表
						Container(
							padding: EdgeInsets.all(10.0),
							decoration:BoxDecoration(
								border:Border(bottom: BorderSide(color: Colors.grey[200],width: 10.0)),
								color: Color.fromARGB(255, 255, 255, 255),
							),
							child: ActorTable(title:"演员表"),
						)
					],
				),
		);
	}
}

// 顶部宣传图
class HeadImage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 	Stack(
					children: <Widget>[
						Image.network(
							"https://tpc.googlesyndication.com/simgad/4097515285375806291?sqp=4sqPyQQrQikqJwhfEAEdAAC0QiABKAEwCTgDQPCTCUgAUAFYAWBfcAJ4AcUBLbKdPg&rs=AOga4qmw_XFnqiKb7bxA_16NNgNFj3NDMw",
							width:MediaQuery.of(context).size.width,
							height: 150.0,
							fit:BoxFit.cover,	
						),
						Positioned(
							top:6.0,
							left: 10.0,
							child: GestureDetector(
								onTap: () => Navigator.pop(context),//返回上一页
								child: Icon(
									Icons.arrow_back,
									color: Color.fromARGB(255, 255, 255, 255),
									size:26,
								)
							),
						),
						Positioned(
							top:6.0,
							right: 10.0,
							child: GestureDetector(
								onTap: () => changeShare(),//分享
								child: Icon(
									Icons.share,
									color: Color.fromARGB(255, 255, 255, 255),
									size:26,
								)
							),
						)
					],
			);
	}
	// 分享
	void changeShare(){
		
	}
}

// 基本信息
class VideoBasisData extends StatefulWidget {
	@override
	_VideoDataBasisState createState() => _VideoDataBasisState();
}

class _VideoDataBasisState extends State<VideoBasisData> {
	@override
	Widget build(BuildContext context) {
		return Padding(
			padding: EdgeInsets.all(10.0),
			child: Row(
				children: <Widget>[
					PublicityFigure(),
					Padding(
						padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
						child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									Text("为国而歌",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 16,height:1.6)),
									Text("Youth",style:TextStyle(fontSize: 14,height:1.6)),
									Text("110分钟",style:TextStyle(fontSize: 14,height:1.6)),
									Text("剧情 战争 历史",style:TextStyle(fontSize: 14,height:1.6)),
									Text("20191018 - 中国上映",style:TextStyle(fontSize: 14,height:1.6)),
									Row(
										children: <Widget>[
											Container(
												height: 35,
												width: 90,
												padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
												margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
												child: OutlineButton(
													child: Text("中国巨幕",style: TextStyle(color: Color.fromARGB(250, 102, 102, 102)),),
													onPressed: () {},
												),
											),
											Container(
												height: 35,
												width: 74,
												padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
												child: OutlineButton(
													child: Text("IMAX",style: TextStyle(color: Color.fromARGB(250, 102, 102, 102)),),
													onPressed: () {},
												),
											)
										],
									)
								],
							),
					),
					Expanded(
						child:Container(
							color: Color.fromARGB(250, 238, 153, 34),
							margin: EdgeInsets.fromLTRB(30, 0, 0, 50.0),
							width: 30,
							height: 30,
							child: Center(
								child: Text(
									"7",
									style: TextStyle(
										color: Color.fromARGB(255, 255, 255, 255)
									),
								),
							)
						),
					)
				],
			)
		);
	}
}

class PublicityFigure extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 	GestureDetector(
					onTap: () => Navigator.of(context).pushNamed("trivia", arguments: "花絮"),
					child:Stack(
						alignment: FractionalOffset(.5,.5),
						children: <Widget>[
							Image.network(
								"https://tpc.googlesyndication.com/simgad/4097515285375806291?sqp=4sqPyQQrQikqJwhfEAEdAAC0QiABKAEwCTgDQPCTCUgAUAFYAWBfcAJ4AcUBLbKdPg&rs=AOga4qmw_XFnqiKb7bxA_16NNgNFj3NDMw",
								width: 120.0,
								height: 150.0,
								fit:BoxFit.cover,	
							),
							Icon(
								Icons.play_circle_outline,
								color: Color.fromARGB(255, 255, 255, 255),
								size:46,
							)
						],
					),
				);
	}
}

class ActorTable extends StatefulWidget {
	ActorTable({Key key, this.title}) : super(key: key);
  	final String title;
	@override
	_ActorTableState createState() => _ActorTableState();
}

class _ActorTableState extends State<ActorTable> {
	@override
	Widget build(BuildContext context) {
		return Container(
			width: MediaQuery.of(context).size.width,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Text(widget.title),
					SingleChildScrollView(
						padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
						scrollDirection:Axis.horizontal,
						child: Row(
							children:[1,2,3,4,5,6,7,8,9].map((item){
								return Container(
									margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
									child: Container(
										width: 100.0,
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											mainAxisAlignment: MainAxisAlignment.start,
											children: <Widget>[
												Image.network(
													"https://tpc.googlesyndication.com/simgad/4097515285375806291?sqp=4sqPyQQrQikqJwhfEAEdAAC0QiABKAEwCTgDQPCTCUgAUAFYAWBfcAJ4AcUBLbKdPg&rs=AOga4qmw_XFnqiKb7bxA_16NNgNFj3NDMw",
													width: 100.0,
													height: 100.0,
													fit:BoxFit.cover,	
												),
												Text("演员:张三"),
												Text("角色:李四"),
											],
										),
									),
								);
							}).toList()
						),
					)
				],
			),
		);
	}
}