// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacktoberapp_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _HacktoberappClient implements HacktoberappClient {
  _HacktoberappClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://hacktoberfestchecker.jenko.me';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<User> getInfo(username) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'username': username};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/prs',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
