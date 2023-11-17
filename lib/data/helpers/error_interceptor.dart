import 'dart:convert';

import 'package:http_interceptor/http_interceptor.dart';
import 'package:rayon_flutter_core/common/typedefs.dart';
import 'package:rayon_flutter_core/data/helpers/exceptions.dart';

class ErrorInterceptor extends InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    final body = jsonDecode((response as Response).body) as JsonMap;
    final message = body['message'] as String?;

    switch (response.statusCode) {
      case 200:
      case 201:
        return response;
      case 401:
      case 403:
        throw UnauthorizedException(message);
      case 404:
        throw NotFoundException(message);
      case 408:
        throw const RequestTimeoutException();
      case 400:
      case 500:
      default:
        throw const DefaultException();
    }
  }

  @override
  Future<bool> shouldInterceptRequest() async => false;

  @override
  Future<bool> shouldInterceptResponse() async => true;
}
