import '/backend/api_requests/api_calls.dart';
import '/components/explore_episode_widget.dart';
import '/components/footer_desktop_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/youtube_player_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/podcast/choice_chips/choice_chips_widget.dart';
import '/pages/podcast_details/a_i_summary/a_i_summary_widget.dart';
import '/pages/podcast_details/conversation/conversation_widget.dart';
import '/pages/podcast_details/speaker/speaker_widget.dart';
import '/pages/podcast_details/timestamp/timestamp_widget.dart';
import '/pages/shorts_dynamic/shorts_dynamic_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'podcast_details_widget.dart' show PodcastDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsModel extends FlutterFlowModel<PodcastDetailsWidget> {
  ///  Local state fields for this page.

  dynamic currentEpisode;

  int selectedTab = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (episodes details)] action in PodcastDetails widget.
  ApiCallResponse? episodeDetailsResponse;
  // Stores action output result for [Custom Action - setEpisodeDetailsMap] action in PodcastDetails widget.
  dynamic? setEpisodeDetailsMapResponse;
  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel1;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel2;
  // Models for ShortsDynamic dynamic component.
  late FlutterFlowDynamicModels<ShortsDynamicModel> shortsDynamicModels1;
  // Model for Conversation component.
  late ConversationModel conversationModel1;
  // Models for ShortsDynamic dynamic component.
  late FlutterFlowDynamicModels<ShortsDynamicModel> shortsDynamicModels2;
  // Model for Timestamp component.
  late TimestampModel timestampModel;
  // Model for AISummary component.
  late AISummaryModel aISummaryModel;
  // Model for Conversation component.
  late ConversationModel conversationModel2;
  // Models for Speaker dynamic component.
  late FlutterFlowDynamicModels<SpeakerModel> speakerModels1;
  // Models for Speaker dynamic component.
  late FlutterFlowDynamicModels<SpeakerModel> speakerModels2;
  // Models for ExploreEpisode dynamic component.
  late FlutterFlowDynamicModels<ExploreEpisodeModel> exploreEpisodeModels;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for FooterDesktop component.
  late FooterDesktopModel footerDesktopModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    youtubePlayerModel1 = createModel(context, () => YoutubePlayerModel());
    youtubePlayerModel2 = createModel(context, () => YoutubePlayerModel());
    shortsDynamicModels1 = FlutterFlowDynamicModels(() => ShortsDynamicModel());
    conversationModel1 = createModel(context, () => ConversationModel());
    shortsDynamicModels2 = FlutterFlowDynamicModels(() => ShortsDynamicModel());
    timestampModel = createModel(context, () => TimestampModel());
    aISummaryModel = createModel(context, () => AISummaryModel());
    conversationModel2 = createModel(context, () => ConversationModel());
    speakerModels1 = FlutterFlowDynamicModels(() => SpeakerModel());
    speakerModels2 = FlutterFlowDynamicModels(() => SpeakerModel());
    exploreEpisodeModels =
        FlutterFlowDynamicModels(() => ExploreEpisodeModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerModel1.dispose();
    youtubePlayerModel2.dispose();
    shortsDynamicModels1.dispose();
    conversationModel1.dispose();
    shortsDynamicModels2.dispose();
    timestampModel.dispose();
    aISummaryModel.dispose();
    conversationModel2.dispose();
    speakerModels1.dispose();
    speakerModels2.dispose();
    exploreEpisodeModels.dispose();
    footerMobileModel.dispose();
    footerDesktopModel.dispose();
  }
}
