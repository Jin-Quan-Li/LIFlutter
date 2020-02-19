import 'package:flutter/material.dart';

class Trivia extends StatefulWidget {
	@override
	_TriviaState createState() => _TriviaState();
}

class _TriviaState extends State<Trivia> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("预告片&拍摄花絮"),
			),
			body: ListView(
				shrinkWrap: true, 
				children: [1,2,3,4,5,6,7,8,9,10,11].map((item){
					return GestureDetector(
							onTap: () => Navigator.pushNamed(context, "playVideo",arguments: "我是需要传递的参数"),
							child: ItemTrivia(),
						);
					}).toList()
			),
		);
	}
}

class ItemTrivia extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 	Container(
					padding: EdgeInsets.all(10.0),
					decoration:BoxDecoration(
						border:Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0))
					),
					child:Row(
						children: <Widget>[
							Stack(
								alignment: FractionalOffset(.5,.5),
								children: <Widget>[
									Image.network(
										"https://tpc.googlesyndication.com/simgad/4097515285375806291?sqp=4sqPyQQrQikqJwhfEAEdAAC0QiABKAEwCTgDQPCTCUgAUAFYAWBfcAJ4AcUBLbKdPg&rs=AOga4qmw_XFnqiKb7bxA_16NNgNFj3NDMw",
										width: 120.0,
										height: 80.0,
										fit:BoxFit.cover,	
									),
									Icon(
										Icons.play_circle_outline,
										color: Color.fromARGB(255, 255, 255, 255),
										size:46,
									)
								],
							),
							Padding(
								padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
								child: Column(
										mainAxisAlignment: MainAxisAlignment.start,
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Text(
												"叶问4 先导预告",
												style: TextStyle(
													fontWeight: FontWeight.w600,
													fontSize: 16
												),
											),
											Container(
												margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
												child: Text(
													"片长：60",
													style: TextStyle(
														fontSize: 16,
														color: Color.fromARGB(250, 102, 102, 102)
													),
												),
											)
										],
									),
							)
						],
					)
				);
	}
}