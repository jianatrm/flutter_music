import 'package:flutter/material.dart';
import 'package:flutter_music/src/pages/mine/mine_page.dart';
import 'package:flutter_music/src/pages/music/music_page.dart';
import 'package:flutter_music/src/pages/news/news_page.dart';
import 'package:flutter_music/src/pages/video/video_page.dart';

class NavigatorPage extends StatefulWidget {
  NavigatorPage({Key key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var default_color = Colors.grey;
  var currentIndex = 0;

  PageController pageController = new PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: this.pageController,
        children: <Widget>[
          MusicPage(),
          VideoPage(),
          NewsPage(),
          MinePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (index){
          this.pageController.jumpToPage(index);
          setState(() {
            this.currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconData(0xe6bd,fontFamily: 'iconfont'),color: this.default_color,),
            title: Text('音乐',style: TextStyle(color: this.currentIndex == 0? Color.fromRGBO(46, 204, 113,1.0):this.default_color),),
            activeIcon: Icon(IconData(0xe6bd,fontFamily: 'iconfont'),color: Color.fromRGBO(46, 204, 113,1.0),)
          ),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe6ba,fontFamily: 'iconfont'),color: this.default_color,),
              title: Text('电影',style: TextStyle(color: this.currentIndex == 1? Color.fromRGBO(52, 152, 219,1.0):this.default_color),),
              activeIcon: Icon(IconData(0xe6ba,fontFamily: 'iconfont'),color: Color.fromRGBO(52, 152, 219,1.0))
          ),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe645,fontFamily: 'iconfont'),color: this.default_color,),
              title: Text('新闻',style: TextStyle(color: this.currentIndex == 2? Color.fromRGBO(52, 73, 94,1.0):this.default_color),),
              activeIcon: Icon(IconData(0xe645,fontFamily: 'iconfont'),color: Color.fromRGBO(52, 73, 94,1.0),)
          ),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe6bc,fontFamily: 'iconfont'),color: this.default_color,),
              title: Text('我的',style: TextStyle(color: this.currentIndex == 3?Color.fromRGBO(255, 99, 72,1.0):this.default_color),),
              activeIcon: Icon(IconData(0xe6bc,fontFamily: 'iconfont'),color: Color.fromRGBO(255, 99, 72,1.0),)
          ),
        ],
      ),
    );
  }
}