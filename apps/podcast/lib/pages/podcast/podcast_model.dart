import '/backend/api_requests/api_calls.dart';
import '/components/explore_episode_widget.dart';
import '/components/footer_desktop_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/subscribe_form_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/podcast/choice_chips/choice_chips_widget.dart';
import '/pages/podcast/featured_episode/featured_episode_widget.dart';
import '/pages/shorts_dynamic/shorts_dynamic_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'podcast_widget.dart' show PodcastWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PodcastModel extends FlutterFlowModel<PodcastWidget> {
  ///  Local state fields for this page.

  List<dynamic> featuredEpisodes = [];
  void addToFeaturedEpisodes(dynamic item) => featuredEpisodes.add(item);
  void removeFromFeaturedEpisodes(dynamic item) =>
      featuredEpisodes.remove(item);
  void removeAtIndexFromFeaturedEpisodes(int index) =>
      featuredEpisodes.removeAt(index);
  void insertAtIndexInFeaturedEpisodes(int index, dynamic item) =>
      featuredEpisodes.insert(index, item);
  void updateFeaturedEpisodesAtIndex(int index, Function(dynamic) updateFn) =>
      featuredEpisodes[index] = updateFn(featuredEpisodes[index]);

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for FeaturedEpisode dynamic component.
  late FlutterFlowDynamicModels<FeaturedEpisodeModel> featuredEpisodeModels1;
  // Model for FeaturedEpisode component.
  late FeaturedEpisodeModel featuredEpisodeModel2;
  // Model for FooterDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    featuredEpisodeModels1 =
        FlutterFlowDynamicModels(() => FeaturedEpisodeModel());
    featuredEpisodeModel2 = createModel(context, () => FeaturedEpisodeModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    featuredEpisodeModels1.dispose();
    featuredEpisodeModel2.dispose();
    footerDesktopModel.dispose();
    footerMobileModel.dispose();
  }

  /// Action blocks.
  Future podcastPageOnLoad(BuildContext context) async {
    ApiCallResponse? featuredEpisodesResponse;
    ApiCallResponse? episodesResponse;
    ApiCallResponse? highlightsResponse;

    await Future.wait([
      Future(() async {
        featuredEpisodesResponse =
            await ApiHostGroup.featuredEpisodesCall.call();

        if ((featuredEpisodesResponse?.succeeded ?? true)) {
          FFAppState().featuredEpisodesResponse = getJsonField(
            (featuredEpisodesResponse?.jsonBody ?? ''),
            r'''$.items''',
            true,
          )!
              .toList()
              .cast<dynamic>();
          FFAppState().update(() {});
        }
      }),
      Future(() async {
        // Action 2
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
}
