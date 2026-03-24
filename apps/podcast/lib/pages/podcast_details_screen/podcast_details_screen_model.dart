import '/backend/api_requests/api_calls.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/episode_details/a_i_summary/a_i_summary_widget.dart';
import '/episode_details/conversation/conversation_widget.dart';
import '/episode_details/speaker/speaker_widget.dart';
import '/episode_details/timestamp/timestamp_widget.dart';
import '/episodes/explore_episodes_budget_with_container_dynamic/explore_episodes_budget_with_container_dynamic_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/youtube_player/youtube_player_widget.dart';
import '/shorts/shorts_budget_anil/shorts_budget_anil_widget.dart';
import '/shorts/shorts_budget_krishnan/shorts_budget_krishnan_widget.dart';
import '/shorts/shorts_budget_laveesh/shorts_budget_laveesh_widget.dart';
import '/shorts/shorts_budget_unni_krishnan/shorts_budget_unni_krishnan_widget.dart';
import '/shorts/shorts_dynamic/shorts_dynamic_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'podcast_details_screen_widget.dart' show PodcastDetailsScreenWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsScreenModel
    extends FlutterFlowModel<PodcastDetailsScreenWidget> {
  ///  Local state fields for this page.

  dynamic currentEpisode;

  int selectedTab = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (episodes details)] action in PodcastDetailsScreen widget.
  ApiCallResponse? episodeDetailsResponse;
  // Stores action output result for [Custom Action - setEpisodeDetailsMap] action in PodcastDetailsScreen widget.
  dynamic? setEpisodeDetailsMapResponse;
  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel1;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel2;
  // Model for ShortsBudgetKrishnan component.
  late ShortsBudgetKrishnanModel shortsBudgetKrishnanModel;
  // Model for ShortsBudgetLaveesh component.
  late ShortsBudgetLaveeshModel shortsBudgetLaveeshModel;
  // Model for ShortsBudgetAnil component.
  late ShortsBudgetAnilModel shortsBudgetAnilModel;
  // Model for ShortsBudgetUnniKrishnan component.
  late ShortsBudgetUnniKrishnanModel shortsBudgetUnniKrishnanModel;
  // Model for Conversation component.
  late ConversationModel conversationModel1;
  // Models for ShortsDynamic dynamic component.
  late FlutterFlowDynamicModels<ShortsDynamicModel> shortsDynamicModels;
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
  // Models for ExploreEpisodesBudgetWithContainerDynamic dynamic component.
  late FlutterFlowDynamicModels<ExploreEpisodesBudgetWithContainerDynamicModel>
      exploreEpisodesBudgetWithContainerDynamicModels;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    youtubePlayerModel1 = createModel(context, () => YoutubePlayerModel());
    youtubePlayerModel2 = createModel(context, () => YoutubePlayerModel());
    shortsBudgetKrishnanModel =
        createModel(context, () => ShortsBudgetKrishnanModel());
    shortsBudgetLaveeshModel =
        createModel(context, () => ShortsBudgetLaveeshModel());
    shortsBudgetAnilModel = createModel(context, () => ShortsBudgetAnilModel());
    shortsBudgetUnniKrishnanModel =
        createModel(context, () => ShortsBudgetUnniKrishnanModel());
    conversationModel1 = createModel(context, () => ConversationModel());
    shortsDynamicModels = FlutterFlowDynamicModels(() => ShortsDynamicModel());
    timestampModel = createModel(context, () => TimestampModel());
    aISummaryModel = createModel(context, () => AISummaryModel());
    conversationModel2 = createModel(context, () => ConversationModel());
    speakerModels1 = FlutterFlowDynamicModels(() => SpeakerModel());
    speakerModels2 = FlutterFlowDynamicModels(() => SpeakerModel());
    exploreEpisodesBudgetWithContainerDynamicModels = FlutterFlowDynamicModels(
        () => ExploreEpisodesBudgetWithContainerDynamicModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerModel1.dispose();
    youtubePlayerModel2.dispose();
    shortsBudgetKrishnanModel.dispose();
    shortsBudgetLaveeshModel.dispose();
    shortsBudgetAnilModel.dispose();
    shortsBudgetUnniKrishnanModel.dispose();
    conversationModel1.dispose();
    shortsDynamicModels.dispose();
    timestampModel.dispose();
    aISummaryModel.dispose();
    conversationModel2.dispose();
    speakerModels1.dispose();
    speakerModels2.dispose();
    exploreEpisodesBudgetWithContainerDynamicModels.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
