
import 'package:flutter/material.dart';
import 'package:flutter_music/src/pages/music/music_tab_left_page.dart';
import 'package:flutter_music/src/pages/music/music_tab_right_page.dart';


class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage>  with SingleTickerProviderStateMixin{
  TabController _tabController; //需要定义一个Controller
  List tabs = ["tab1","tab2"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TabBar(
            labelColor: Colors.black,
            isScrollable:true,
            controller:this._tabController,
            tabs: this.tabs.map((tab) => Tab(text: tab)).toList()),
      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            MusicTabLeftPage(),
            MusicTabRightPage()
          ],
      ),
    );
  }
}
