import 'package:dio/dio.dart';
import 'package:ulearning_app/common/values/constant.dart';

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
      {dynamic data, Map<String, dynamic>? queryParameters}) async {
    var response =
        await dio.post(path, data: data, queryParameters: queryParameters);

    // print("response data :  ${response.toString()}");
    // print("Status code :  ${response.statusCode.toString()}");
    return response.data;
  }
}
