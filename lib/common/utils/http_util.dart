import 'package:dio/dio.dart';
import 'package:ulearning_app/common/values/constant.dart';
import 'package:ulearning_app/global.dart';

class HttpUtil {
  late Dio dio;

  HttpUtil._internal() {
    BaseOptions options = BaseOptions(
        baseUrl: AppConstants.SERVER_API_URL,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        headers: {},
        contentType: "application/json: charset=utf-8",
        responseType: ResponseType.json);

    dio = Dio(options);
  }

  static final HttpUtil _instance = HttpUtil._internal();

  factory HttpUtil() {
    return _instance;
  }

  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
    Options resquestOptions = options ?? Options();
    resquestOptions.headers = resquestOptions.headers ?? {};
    Map<String, dynamic>? authorization = await getAuthorizationHeader();
    if (authorization != null) {
      resquestOptions.headers!.addAll(authorization);
    }
    try {
      var response = await dio.post(path,
          data: data,
          queryParameters: queryParameters,
          options: resquestOptions);
      return response.data;
    } catch (e) {
      print(e.toString());
    }
    // print("response data :  ${response.toString()}");
    // print("Status code :  ${response.statusCode.toString()}");
  }

  Map<String, dynamic>? getAuthorizationHeader() {
    var headers = <String, dynamic>{};
    var accessToken = Global.storageService.getUserToken();
    print("kkkkkkkkk kkk $accessToken");
    if (accessToken.isNotEmpty) {
      headers['Authorization'] = 'Bearer $accessToken';
    }
    return headers;
  }
}
