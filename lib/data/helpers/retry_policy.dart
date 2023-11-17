import 'dart:developer';

import 'package:http_interceptor/http_interceptor.dart';
import 'package:rayon_flutter_core/data/helpers/helpers.dart';

class ExpiredTokenRetryPolicy implements RetryPolicy {
  @override
  int get maxRetryAttempts => 2;

  @override
  Future<bool> shouldAttemptRetryOnException(
    Exception reason,
    BaseRequest request,
  ) async {
    if (reason is UnauthorizedException) {
      log('Retrying request...');

      // Refresh Token API call and updated stored token

      return true;
    }

    return false;
  }

  @override
  Future<bool> shouldAttemptRetryOnResponse(BaseResponse response) async =>
      false;
}
