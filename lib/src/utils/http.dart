import 'package:dio/dio.dart';

class Http{
  static Http instance;
  Dio dio;
  BaseOptions options;

  CancelToken cancelToken = new CancelToken();

  static Http getInstance() {
    if (null == instance) instance = new Http();
    return instance;
  }


  Http() {
    //BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    options = new BaseOptions(
      //请求基地址,可以包含子路径
      baseUrl: "http://localhost:8001",
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: 10000,
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: 5000,
      //Http请求头.
      headers: {
        //do something
        "version": "1.0.0"
      },
      //请求的Content-Type，默认值是"application/json; charset=utf-8",Headers.formUrlEncodedContentType会自动编码请求体.
      contentType: Headers.formUrlEncodedContentType,
      //表示期望以那种格式(方式)接受响应数据。接受4种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      responseType: ResponseType.json,
    );

    dio = new Dio(options);
  }



   /*
   * get请求
   */
  get(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.get(url, queryParameters: data, options: options);
      print('get success---------${response.statusCode}');
      print('get success---------${response.data}');
    } on DioError catch (e) {
      print('get error---------$e');
    }
    return response;
  }

   /*
   * post请求
   */
  post(url, {data, options, cancelToken}) async {
    Response response;
    try {
      print("post");
      response = await dio.post(url, queryParameters: data, options: options);
      print('post success---------${response.data}');
    } on DioError catch (e) {
      print('post error---------$e');
    
    }
    return response;
  }
}