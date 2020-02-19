import 'package:flutter/material.dart';

// 上映Widget
class NoRelease extends StatefulWidget {
	@override
	_ReleaseState createState() => _ReleaseState();
}

class _ReleaseState extends State<NoRelease> {
	@override
	Widget build(BuildContext context) {
		return Container(
			child: ListView.builder(
				itemCount: 100,
				padding: EdgeInsets.all(10.0),
				// itemExtent: 50.0, //强制高度为50.0
				itemBuilder: (BuildContext context, int index) {
					return RowRelease(index:index);
				}
			)
		);
  	}
}

// 横向布局
class RowRelease extends StatefulWidget {
	RowRelease({Key key,this.index}):super(key:key);
	final int index;
	@override
	_RowReleaseState createState() => _RowReleaseState();
}

class _RowReleaseState extends State<RowRelease> {
	@override
	Widget build(BuildContext context) {
		return GestureDetector(
				onTap: () => updateText(widget.index),//点击
				child: Container(
				width: 120.0,
				height: 150.0,
				padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
				decoration:BoxDecoration(
					border:Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0))
				),
				child: Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: <Widget>[
						Stack(
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
						Expanded(
							child: Padding(
								padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
								child:Column(
									mainAxisAlignment: MainAxisAlignment.center,
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Padding(
											padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
											child: Text(
												"叶问4：完结篇",
												style: TextStyle(
													fontSize: 16.0,
													fontWeight: FontWeight.w600
												),
											),
										),
										Padding(
											padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
											child: Text(
												"甑子丹过招美军",
												style: TextStyle(
													color: Color.fromARGB(250, 238, 153, 34)
												),
											),
										),
										Padding(
											padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
											child: Text(
												"动作/传记/历史",
												style: TextStyle(
													color: Color.fromARGB(250, 102, 102, 102)
												),
											),
										)
									],
								),
							),
						),
						Expanded(
							child:Column(
								mainAxisAlignment: MainAxisAlignment.center,
								crossAxisAlignment: CrossAxisAlignment.end,
								children: <Widget>[
									Container(
										width: 70,
										height: 40,
										padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
										child: OutlineButton(
												child: Text("预售",style: TextStyle(color: Color.fromARGB(250, 238, 153, 34)),),
												onPressed: () {},
											),
									)
								],
							),
						)
					],
				),
			),
		);
	}
	void updateText(int index) {
		//更新显示的事件名
		Navigator.pushNamed(context, "videoDetails",arguments: index);
	}
}