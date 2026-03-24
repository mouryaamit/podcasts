import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future onLoad(BuildContext context) async {
  ApiCallResponse? featuredEpisodesResponse;
  ApiCallResponse? episodesResponse;
  ApiCallResponse? highlightsResponse;

  await Future.wait([
    Future(() async {
      featuredEpisodesResponse = await ApiHostGroup.featuredEpisodesCall.call();

      if ((featuredEpisodesResponse?.succeeded ?? true)) {
        FFAppState().featuredEpisodesResponse = getJsonField(
          (featuredEpisodesResponse?.jsonBody ?? ''),
          r'''$.items''',
          true,
        )!
            .toList()
            .cast<dynamic>();
      }
    }),
    Future(() async {
      episodesResponse = await ApiHostGroup.episodesCall.call();

      if ((episodesResponse?.succeeded ?? true)) {
        FFAppState().exploreEpisodesResponse = getJsonField(
          (episodesResponse?.jsonBody ?? ''),
          r'''$.items''',
          true,
        )!
            .toList()
            .cast<dynamic>();
      }
    }),
    Future(() async {
      highlightsResponse = await ApiHostGroup.highlightsCall.call();

      if ((highlightsResponse?.succeeded ?? true)) {
        FFAppState().HighlightsResponse = getJsonField(
          (highlightsResponse?.jsonBody ?? ''),
          r'''$.items''',
          true,
        )!
            .toList()
            .cast<dynamic>();
      }
    }),
  ]);
}
