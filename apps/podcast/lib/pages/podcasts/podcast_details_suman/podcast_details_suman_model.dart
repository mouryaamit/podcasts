import '/ai_summary/suman_a_i_summary/suman_a_i_summary_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/speaker_widget.dart';
import '/conversation/conversation_suman/conversation_suman_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/players/youtube_player/youtube_player_widget.dart';
import '/players/youtube_player_suman/youtube_player_suman_widget.dart';
import '/shorts/shorts_suman/shorts_suman_widget.dart';
import '/shorts/shorts_suman_details1/shorts_suman_details1_widget.dart';
import '/shorts/shorts_suman_details2/shorts_suman_details2_widget.dart';
import '/timestamp/suman_timestamp/suman_timestamp_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'podcast_details_suman_widget.dart' show PodcastDetailsSumanWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsSumanModel
    extends FlutterFlowModel<PodcastDetailsSumanWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayerSuman component.
  late YoutubePlayerSumanModel youtubePlayerSumanModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel;
  // Model for ShortsSuman component.
  late ShortsSumanModel shortsSumanModel1;
  // Model for ShortsSumanDetails1 component.
  late ShortsSumanDetails1Model shortsSumanDetails1Model1;
  // Model for ShortsSumanDetails2 component.
  late ShortsSumanDetails2Model shortsSumanDetails2Model1;
  // Model for SumanTimestamp component.
  late SumanTimestampModel sumanTimestampModel1;
  // Model for SumanAISummary component.
  late SumanAISummaryModel sumanAISummaryModel1;
  // Model for ConversationSuman component.
  late ConversationSumanModel conversationSumanModel1;
  // Model for ShortsSuman component.
  late ShortsSumanModel shortsSumanModel2;
  // Model for ShortsSumanDetails1 component.
  late ShortsSumanDetails1Model shortsSumanDetails1Model2;
  // Model for ShortsSumanDetails2 component.
  late ShortsSumanDetails2Model shortsSumanDetails2Model2;
  // Model for SumanTimestamp component.
  late SumanTimestampModel sumanTimestampModel2;
  // Model for SumanAISummary component.
  late SumanAISummaryModel sumanAISummaryModel2;
  // Model for ConversationSuman component.
  late ConversationSumanModel conversationSumanModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel1;
  // Model for Speaker component.
  late SpeakerModel speakerModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel3;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel1;
  // Model for ExploreEpisodesTirthankarWithContainer component.
  late ExploreEpisodesTirthankarWithContainerModel
      exploreEpisodesTirthankarWithContainerModel1;
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel1;
  // Model for ExploreEpisodesRahulWithContainer component.
  late ExploreEpisodesRahulWithContainerModel
      exploreEpisodesRahulWithContainerModel1;
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel1;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel2;
  // Model for ExploreEpisodesTirthankarWithContainer component.
  late ExploreEpisodesTirthankarWithContainerModel
      exploreEpisodesTirthankarWithContainerModel2;
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel2;
  // Model for ExploreEpisodesRahulWithContainer component.
  late ExploreEpisodesRahulWithContainerModel
      exploreEpisodesRahulWithContainerModel2;
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel2;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel3;
  // Model for ExploreEpisodesTirthankarWithContainer component.
  late ExploreEpisodesTirthankarWithContainerModel
      exploreEpisodesTirthankarWithContainerModel3;
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel3;
  // Model for ExploreEpisodesRahulWithContainer component.
  late ExploreEpisodesRahulWithContainerModel
      exploreEpisodesRahulWithContainerModel3;
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel3;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    youtubePlayerSumanModel =
        createModel(context, () => YoutubePlayerSumanModel());
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsSumanModel1 = createModel(context, () => ShortsSumanModel());
    shortsSumanDetails1Model1 =
        createModel(context, () => ShortsSumanDetails1Model());
    shortsSumanDetails2Model1 =
        createModel(context, () => ShortsSumanDetails2Model());
    sumanTimestampModel1 = createModel(context, () => SumanTimestampModel());
    sumanAISummaryModel1 = createModel(context, () => SumanAISummaryModel());
    conversationSumanModel1 =
        createModel(context, () => ConversationSumanModel());
    shortsSumanModel2 = createModel(context, () => ShortsSumanModel());
    shortsSumanDetails1Model2 =
        createModel(context, () => ShortsSumanDetails1Model());
    shortsSumanDetails2Model2 =
        createModel(context, () => ShortsSumanDetails2Model());
    sumanTimestampModel2 = createModel(context, () => SumanTimestampModel());
    sumanAISummaryModel2 = createModel(context, () => SumanAISummaryModel());
    conversationSumanModel2 =
        createModel(context, () => ConversationSumanModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    exploreEpisodesBudgetWithContainerModel1 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel1 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel1 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel1 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel1 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesBudgetWithContainerModel2 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel2 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel2 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel2 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel2 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesBudgetWithContainerModel3 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel3 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel3 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel3 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel3 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerSumanModel.dispose();
    youtubePlayerModel.dispose();
    shortsSumanModel1.dispose();
    shortsSumanDetails1Model1.dispose();
    shortsSumanDetails2Model1.dispose();
    sumanTimestampModel1.dispose();
    sumanAISummaryModel1.dispose();
    conversationSumanModel1.dispose();
    shortsSumanModel2.dispose();
    shortsSumanDetails1Model2.dispose();
    shortsSumanDetails2Model2.dispose();
    sumanTimestampModel2.dispose();
    sumanAISummaryModel2.dispose();
    conversationSumanModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesTirthankarWithContainerModel1.dispose();
    exploreEpisodesSrivatsramWithContainerModel1.dispose();
    exploreEpisodesRahulWithContainerModel1.dispose();
    exploreEpisodesZeenatWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    exploreEpisodesTirthankarWithContainerModel2.dispose();
    exploreEpisodesSrivatsramWithContainerModel2.dispose();
    exploreEpisodesRahulWithContainerModel2.dispose();
    exploreEpisodesZeenatWithContainerModel2.dispose();
    exploreEpisodesBudgetWithContainerModel3.dispose();
    exploreEpisodesTirthankarWithContainerModel3.dispose();
    exploreEpisodesSrivatsramWithContainerModel3.dispose();
    exploreEpisodesRahulWithContainerModel3.dispose();
    exploreEpisodesZeenatWithContainerModel3.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
