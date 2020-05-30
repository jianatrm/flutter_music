import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_music/src/utils/http.dart';
import 'package:flutter_music/src/utils/request.dart';
import 'package:flutter_music/src/utils/screenUtil.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  GlobalKey _formKey = new GlobalKey<FormState>();
  List tabs = ["快捷登录", "密码登录"];

  String _loginText = "登录";
  bool _login = false;
  TabController _tabController;
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void getHttp() async {
    try {
      Response response = await Http().post("/authentication/form",
          data: {'username': 'admin', 'password': '123456'},
          options: new Options(
            headers: {
              "Authorization":
                  "Basic ZWxlcGhhbnQ6JDJhJDEwJHNscnRESlNmYy5CSzZKVlpiajFkaS5EdHBoSGE1SE92MG53dFNiMi5XQlZEb3FSbnB0OVYy"
            },
            contentType: "application/x-www-form-urlencoded",
          ));
      print(response);
      Navigator.pushNamed(context,'/navigator');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return Scaffold(
//      appBar: AppBar(
//        title: Text("登录"),
//      ),
      body: Container(
        height: ScreenAdaper.getScreenHeight(),
        width: ScreenAdaper.getScreenWidth(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/app_bk.jpg"), fit: BoxFit.cover)),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //height:ScreenAdaper.height(100),
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    //color: Colors.white,
                    child: TextFormField(
//                        autofocus: true,
                        controller: _unameController,
                        decoration: InputDecoration(
                            hintText: "用户名或邮箱", icon: Icon(Icons.person),
                          border: InputBorder.none
                        ),
                        // 校验用户名
                        validator: (v) {
                          return v.trim().length > 0 ? null : "用户名不能为空";
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                    child: TextFormField(
                        controller: _pwdController,
                        decoration: InputDecoration(
                            hintText: "请输入密码",
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            suffixIcon: IconButton(icon: Icon(_passwordVisible?Icons.visibility_off:Icons.visibility), onPressed: (){
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            })
                        ),
                        
                        obscureText: _passwordVisible,
                        //校验密码
                        validator: (v) {
                          return v.trim().length > 5 ? null : "密码不能少于6位";
                        }),
                  ),

                  // 登录按钮
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            padding: EdgeInsets.all(15.0),
                            child: Text(_loginText),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                      .validate() &&
                                  !_login) {
                                setState(() {
                                  this._loginText = "登录中...";
                                  this._login = true;
                                });
                                getHttp();
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
