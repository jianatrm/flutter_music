import 'package:flutter/material.dart';


class MusicTabLeftPage extends StatefulWidget {
  @override
  _MusicTabLeftPageState createState() => _MusicTabLeftPageState();
}

class _MusicTabLeftPageState extends State<MusicTabLeftPage> {

  List imgaes = ["https://t7.baidu.com/it/u=3204887199,3790688592&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1586705022&t=dae97ff403268733e968e60b079956dd",
    "https://t7.baidu.com/it/u=3204887199,3790688592&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1586705022&t=dae97ff403268733e968e60b079956dd",
    "https://t7.baidu.com/it/u=3204887199,3790688592&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1586705022&t=dae97ff403268733e968e60b079956dd",
    "https://t7.baidu.com/it/u=3204887199,3790688592&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1586705022&t=dae97ff403268733e968e60b079956dd",
    "https://t7.baidu.com/it/u=3204887199,3790688592&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1586705022&t=dae97ff403268733e968e60b079956dd",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 260,
          pinned: true,
          centerTitle: true,
          flexibleSpace:FlexibleSpaceBar(
            title:Text("伽那也是小象",style: TextStyle(color: Colors.white),),
            background:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586170180860&di=e6bfcb921b2f8301a249f605f7c160fd&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180602%2F7168343bb2034d2c9f87adf23b297183.gif",fit: BoxFit.cover,) ,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              padding: EdgeInsets.all(5),
              child: Flex(
              direction: Axis.horizontal,
              children:this.imgaes.map((item)=>
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Image.network("$item",width: 70,height:70,fit: BoxFit.cover,),
                        Text("123")
                      ],
                    ),
                  )
              ).toList()
              ),
          )
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 100,
            width: 18000,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.green,boxShadow: [ //卡片阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0
                    )
                  ]),
                  width: 140,
                  height: 120,
                  child: ListTile(title: Text("$index")),
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
