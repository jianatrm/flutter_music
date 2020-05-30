import 'package:flutter_screenutil/screenutil.dart';

class ScreenAdaper{

  static init(context){
    ScreenUtil.init(context);

    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
  }

  static width(double value){
    return ScreenUtil().setWidth(value);
  }

  static height(double value){
    return ScreenUtil().setHeight(value);
  }

  static getScreenWidth(){
    return ScreenUtil.screenHeightDp;
  }

  static getScreenHeight(){
    return ScreenUtil.screenHeightDp;
  }


}