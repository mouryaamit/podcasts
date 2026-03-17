import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start apiHost Group Code

class ApiHostGroup {
  static String getBaseUrl() => 'https://podcasts-8wr1.onrender.com';
  static Map<String, String> headers = {};
  static EpisodesCall episodesCall = EpisodesCall();
  static FeaturedEpisodesCall featuredEpisodesCall = FeaturedEpisodesCall();
  static EpisodesDetailsCall episodesDetailsCall = EpisodesDetailsCall();
  static VideosCall videosCall = VideosCall();
  static HighlightsCall highlightsCall = HighlightsCall();
}

class EpisodesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'episodes',
      apiUrl: '${baseUrl}/episodes',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FeaturedEpisodesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'featured episodes',
      apiUrl: '${baseUrl}/episodes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'featured': true,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EpisodesDetailsCall {
  Future<ApiCallResponse> call({
    String? slug = '',
  }) async {
    final baseUrl = ApiHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'episodes details',
      apiUrl: '${baseUrl}/episodes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'slug': slug,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VideosCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'videos',
      apiUrl: '${baseUrl}/videos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HighlightsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'highlights',
      apiUrl: '${baseUrl}/highlights',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiHost Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
