import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';

class NetworkRequest extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://fakestoreapi.com";
    httpClient.defaultContentType = "application/json";
    httpClient.userAgent = "PostmanRuntime/7.29.0";
    httpClient.timeout = const Duration(seconds: 10);

    httpClient.addRequestModifier<dynamic>((request) async {
      log(json.encode(request.headers),
          name: '${request.url.host}${request.url.path}');
      return request;
    });
    // var headers = {'Authorization': "Bearer $token"};
    // httpClient.addAuthenticator((request) async {
    //   request.headers.addAll(headers);
    //   return request;
    // });

    super.onInit();
  }
}
