import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class MusicTabRightPage extends StatefulWidget {
  @override
  _MusicTabRightPageState createState() => _MusicTabRightPageState();
}

class _MusicTabRightPageState extends State<MusicTabRightPage> {
  List images = [
    "http://p1.music.126.net/3UPQOq8WMhnEzN8SMY_h4g==/109951164875487925.jpg?imageView&quality=89",
    "http://p1.music.126.net/qqxnFajMQ8Bj1Vvm0qhCng==/109951164875501653.jpg?imageView&quality=89",
    "http://p1.music.126.net/vHDfDedEd2URN9_zFCzG5w==/109951164875514577.jpg?imageView&quality=89",
    "http://p1.music.126.net/U7mp4LXEW6l17zrRbFysvQ==/109951164875539978.jpg?imageView&quality=89",
    "http://p1.music.126.net/_uivT8vu3dbNu-2Zd_RhgQ==/109951164875517669.jpg?imageView&quality=89",
  ];

  List images1 = [
    "http://p3.music.126.net/9PeBTS0QmjB7B_pJUFnz-A==/109951164614296928.jpg?param=200y200",
    "http://p3.music.126.net/A9m6fqExM6LtFDnzUzSwoA==/109951164843148441.jpg?param=100y100",
    "http://p3.music.126.net/JZ0L_3ZMY8UgFCEUN5d_tw==/109951164795031716.jpg?param=100y100",
    "http://p4.music.126.net/dQL9KZXbmGZGE2iwiCbrOw==/109951164800334633.jpg?param=100y100",
    "http://p3.music.126.net/5PR1zXsb5MpWW9fC_lqk2Q==/109951164795221871.jpg?param=100y100",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            height: 240,
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  images[index],
                  fit: BoxFit.fill,
                );
              },
              autoplay: true,
              itemCount: images.length,
              pagination: new SwiperPagination(),
            ))
        ),
        SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height:60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(IconData(0xe61a,fontFamily: 'iconfont'),color: Colors.white,size: 32,),
                            ),
                            onTap: (){
                              print(1);
                            },
                          ),
                          Text("今日推荐")
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height:60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(IconData(0xe621,fontFamily: 'iconfont'),color: Colors.white,size: 32,),
                            ),
                            onTap: (){
                              print(1);
                            },
                          ),
                          Text("歌单")
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height:60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(IconData(0xe613,fontFamily: 'iconfont'),color: Colors.white,size: 32,),
                            ),
                            onTap: (){
                              print(1);
                            },
                          ),
                          Text("排行榜")
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height:60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(IconData(0xe636,fontFamily: 'iconfont'),color: Colors.white,size: 32,),
                            ),
                            onTap: (){
                              print(1);
                            },
                          ),
                          Text("电台")
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height:60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(IconData(0xe637,fontFamily: 'iconfont'),color: Colors.white,size: 32,),
                            ),
                            onTap: (){
                              print(1);
                            },
                          ),
                          Text("私人FM")
                        ],
                      ),
                    )

                  ],
              ),
            )
        ),
        SliverToBoxAdapter(
            child: Container(
              height: 160,
              width: 1800,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [ //卡片阴影
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 4.0
                            )
                      ]),
                      width: 100,
                      height: 140,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child:Column(
                          children: <Widget>[
                            Image.network("http://p1.music.126.net/i-7ktILRPImJ0NwiH8DABg==/109951162885959979.jpg?param=140y140",fit: BoxFit.cover,),
                            Text("英雄赞歌,英雄赞歌英雄赞歌英雄赞歌英雄赞歌",style: TextStyle(fontSize: 12),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 2,)
                          ],
                        ) ,

                      )
                    );
                  }),
            )
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: new SliverGrid( //Grid
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Grid按两列显示
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                //创建子widget
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: new Text('grid item $index'),
                );
              },
              childCount: 40,
            ),
          ),
        ),
      ],
    );
  }
}

