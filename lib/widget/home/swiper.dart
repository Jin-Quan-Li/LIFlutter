import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperImage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 	Container(
			height: 200,
			width: MediaQuery.of(context).size.width,
			child:Swiper(
					itemBuilder: (BuildContext context, int index) {
						return new Image.network(
							"https://tpc.googlesyndication.com/simgad/4097515285375806291?sqp=4sqPyQQrQikqJwhfEAEdAAC0QiABKAEwCTgDQPCTCUgAUAFYAWBfcAJ4AcUBLbKdPg&rs=AOga4qmw_XFnqiKb7bxA_16NNgNFj3NDMw",
							fit: BoxFit.fitWidth,
						);
					},
					itemCount: 5,
					scale: 1,
					// pagination:SwiperPagination(
					// 	margin:EdgeInsets.all(5.0)
					// ),
					viewportFraction: 0.8
				) ,
		);
  	}
}