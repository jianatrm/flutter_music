import 'package:flutter/material.dart';
import 'package:flutter_music/src/utils/screenUtil.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return Container(
      color: Colors.black12,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: ScreenAdaper.height(300),
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586170180860&di=e6bfcb921b2f8301a249f605f7c160fd&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180602%2F7168343bb2034d2c9f87adf23b297183.gif",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: ScreenAdaper.height(10)),
                    child: ListTile(
                      title: Text("我的"),
                      leading: Icon(Icons.payment),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: ScreenAdaper.height(10)),
                    child: ListTile(
                      title: Text("设置"),
                      leading: Icon(Icons.settings),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: ScreenAdaper.height(10)),
                    child: GestureDetector(
                      child: ListTile(
                        title: Text("二维码"),
                        leading: Icon(Icons.call_to_action,color: Colors.deepOrange,),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      onTap: (){
                          Navigator.pushNamed(context, '/brcodescan');
                      },
                    )
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
