import 'package:flutter/material.dart';

import './widget/home/home.dart'; //首页
import './widget/video/video.dart'; //视频
import './widget/center/center.dart'; //我的
import './widget/drawer/drawer.dart'; //抽屉
import './widget/video/details/index.dart'; //视频详情
import './widget/video/details/trivia.dart'; //视频花絮
import './widget/video/details/playVideo.dart'; //视频花絮
import './widget/home/details/musicDetails.dart'; //音乐详情 + 列表
import './widget/home/more/index.dart'; //音乐详情 + 列表
import './widget/home/details/musicPlayer.dart'; //音乐播放器


// 程序入口
void main() => runApp(MyApp());

// 根组件
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title:"音乐",
			theme: new ThemeData(
				primarySwatch: Colors.blue,
			),
			// home:BottomNavigate(),
			initialRoute:"/",
			routes:routers
		);
	}
}

// 默认显示的控件 => 底部菜单
class BottomNavigate extends StatefulWidget {
	@override
	_BottomNavigateState createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
	final _bottomNavigationSelectColor  = Colors.blue;
	final _activeBottomNavigationSelectColor  = Colors.red;
	int _selectedIndex = 0;
	var _controller = PageController(
		initialPage: 0,
	);

	@override
	void dispose() {
		super.dispose();
		_controller.dispose();
	}
	Widget build(BuildContext context) {
		return Scaffold(
			body: PageView( //显示的页面
				controller: _controller,
				children: <Widget>[
					Home(),
					Video(),
					CenterView(),
				],
				onPageChanged:(int index){
					 print("_onPageChange");
					setState(() {
						_selectedIndex = index;
					});
				}
			),
			drawer: new MyDrawer(), //抽屉
			bottomNavigationBar:BottomNavigationBar( //底部菜单
				items:<BottomNavigationBarItem>[
					BottomNavigationBarItem(
						// 音乐 视频 我的 activeIcon === 选中的样式
						activeIcon: Icon(
							Icons.music_note,
							color: _activeBottomNavigationSelectColor
						), 
						icon: Icon(
							Icons.music_note,
							color: _bottomNavigationSelectColor
						), 
						title: Text(
							'音乐',
							style:TextStyle(
								color: _selectedIndex == 0 ? _activeBottomNavigationSelectColor : _bottomNavigationSelectColor
							)
						)
					),
					BottomNavigationBarItem(
						activeIcon: Icon(
							Icons.video_label,
							color: _activeBottomNavigationSelectColor
						), 
						icon: Icon(
							Icons.video_label,
							color: _bottomNavigationSelectColor
						), 
						title: Text(
							'视频',
							style:TextStyle(
								color: _selectedIndex == 1 ? _activeBottomNavigationSelectColor : _bottomNavigationSelectColor
							)
						)
					),
					BottomNavigationBarItem(
						activeIcon: Icon(
							Icons.account_box,
							color: _activeBottomNavigationSelectColor
						), 
						icon: Icon(
							Icons.account_box,
							color: _bottomNavigationSelectColor
						), 
						title: Text(
							'我的',
							style:TextStyle(
								color: _selectedIndex == 2 ? _activeBottomNavigationSelectColor : _bottomNavigationSelectColor
							)
						)
					),
				],
				currentIndex: _selectedIndex,
				fixedColor: Colors.blue,
				onTap: _onItemTapped,
			),
			
		);
	} 
	void _onItemTapped(int index) {
		_controller.jumpToPage(index);
		setState(() {
			_selectedIndex = index;
		});
	}
}

// 所有路由
Map<String, WidgetBuilder> routers = {
	"/":(context) => BottomNavigate(),
	"home":(context) => Home(),
	"video":(context) => Video(),
	"centerView":(context) => CenterView(),
	"videoDetails":(context) => VideoDetails(),
	"trivia":(context) => Trivia(),
	"playVideo":(context) => PlayVideo(),
	"musicDetails":(context) => MusicDetails(),
	"more":(context) => More(),
	"musicPlayer":(context) => MusicPlayer(),
};

// fish_redux: ^0.3.1
//   # 状态管理
//   provide: ^1.0.2
//   #  #网络请求
//   dio: ^2.1.6
//   #  #渐变appbar
//   gradient_app_bar: ^0.0.1
//   #  #屏幕适配
//   flutter_screenutil: ^0.5.2
//   #  #toast
//   fluttertoast: ^3.1.0
//   modal_progress_hud: ^0.1.3
//   shared_preferences: ^0.4.2
//   cupertino_icons: ^0.1.2
//   #  # 上下拉刷新
//   pull_to_refresh: 1.2.0
//   flutter_easyrefresh: ^1.2.7
//   #  # 相册库
//   image_picker: ^0.5.0+9
//   #  # 轮播图
//   banner_view: ^1.1.2
//   #  # 事件总线
//   event_bus: ^1.1.0
//   #  # 网络链接
//   connectivity: ^0.4.3+1
//   #  # 调试工具
//   #  # flutter_flipperkit: ^0.0.10
//   #  # 网络图片显示
//   cached_network_image: ^2.0.0-rc
//   #
//   flutter_swiper: ^1.1.4
//   #  # 开启权限
//   permission_handler: ^3.0.1
//   #
//   #  #打开外部app
//   url_launcher: ^3.0.3
//   #
//   #  flib_lifecycle: ^1.0.0
//   flutter_alibc: ^0.0.9
// #  image_gallery_saver : ^1.2.2 需要ios swift文件坑
//   # 保存图片到相册
//   photo_manager: ^0.4.6
//   # 日志
//   common_utils: ^1.1.1
//   crypto: ^2.1.3