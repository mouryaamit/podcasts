import '/ai_summary/deepak_a_i_summary/deepak_a_i_summary_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/speaker_widget.dart';
import '/conversation/conversation_deepak/conversation_deepak_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/players/youtube_player_deepak/youtube_player_deepak_widget.dart';
import '/shorts/shorts_deepak_details1/shorts_deepak_details1_widget.dart';
import '/shorts/shorts_deepak_details2/shorts_deepak_details2_widget.dart';
import '/shorts/shorts_deepak_details3/shorts_deepak_details3_widget.dart';
import '/timestamp/deepak_timestamp/deepak_timestamp_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'podcast_details_deepak_widget.dart' show PodcastDetailsDeepakWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsDeepakModel
    extends FlutterFlowModel<PodcastDetailsDeepakWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayerDeepak component.
  late YoutubePlayerDeepakModel youtubePlayerDeepakModel1;
  // Model for YoutubePlayerDeepak component.
  late YoutubePlayerDeepakModel youtubePlayerDeepakModel2;
  // Model for ShortsDeepakDetails1 component.
  late ShortsDeepakDetails1Model shortsDeepakDetails1Model1;
  // Model for ShortsDeepakDetails2 component.
  late ShortsDeepakDetails2Model shortsDeepakDetails2Model1;
  // Model for ShortsDeepakDetails3 component.
  late ShortsDeepakDetails3Model shortsDeepakDetails3Model1;
  // Model for DeepakTimestamp component.
  late DeepakTimestampModel deepakTimestampModel1;
  // Model for DeepakAISummary component.
  late DeepakAISummaryModel deepakAISummaryModel1;
  // Model for ConversationDeepak component.
  late ConversationDeepakModel conversationDeepakModel1;
  // Model for ShortsDeepakDetails1 component.
  late ShortsDeepakDetails1Model shortsDeepakDetails1Model2;
  // Model for ShortsDeepakDetails2 component.
  late ShortsDeepakDetails2Model shortsDeepakDetails2Model2;
  // Model for ShortsDeepakDetails3 component.
  late ShortsDeepakDetails3Model shortsDeepakDetails3Model2;
  // Model for DeepakTimestamp component.
  late DeepakTimestampModel deepakTimestampModel2;
  // Model for DeepakAISummary component.
  late DeepakAISummaryModel deepakAISummaryModel2;
  // Model for ConversationDeepak component.
  late ConversationDeepakModel conversationDeepakModel2;
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
      exploreEpisodesZeenatWithContainerModel;
  // Model for ExploreEpisodesSumanWithContainer component.
  late ExploreEpisodesSumanWithContainerModel
      exploreEpisodesSumanWithContainerModel1;
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
  // Model for ExploreEpisodesSumanWithContainer component.
  late ExploreEpisodesSumanWithContainerModel
      exploreEpisodesSumanWithContainerModel2;
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
  // Model for ExploreEpisodesSumanWithContainer component.
  late ExploreEpisodesSumanWithContainerModel
      exploreEpisodesSumanWithContainerModel3;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    youtubePlayerDeepakModel1 =
        createModel(context, () => YoutubePlayerDeepakModel());
    youtubePlayerDeepakModel2 =
        createModel(context, () => YoutubePlayerDeepakModel());
    shortsDeepakDetails1Model1 =
        createModel(context, () => ShortsDeepakDetails1Model());
    shortsDeepakDetails2Model1 =
        createModel(context, () => ShortsDeepakDetails2Model());
    shortsDeepakDetails3Model1 =
        createModel(context, () => ShortsDeepakDetails3Model());
    deepakTimestampModel1 = createModel(context, () => DeepakTimestampModel());
    deepakAISummaryModel1 = createModel(context, () => DeepakAISummaryModel());
    conversationDeepakModel1 =
        createModel(context, () => ConversationDeepakModel());
    shortsDeepakDetails1Model2 =
        createModel(context, () => ShortsDeepakDetails1Model());
    shortsDeepakDetails2Model2 =
        createModel(context, () => ShortsDeepakDetails2Model());
    shortsDeepakDetails3Model2 =
        createModel(context, () => ShortsDeepakDetails3Model());
    deepakTimestampModel2 = createModel(context, () => DeepakTimestampModel());
    deepakAISummaryModel2 = createModel(context, () => DeepakAISummaryModel());
    conversationDeepakModel2 =
        createModel(context, () => ConversationDeepakModel());
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
    exploreEpisodesZeenatWithContainerModel =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel1 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel2 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel2 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel2 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel2 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesSumanWithContainerModel2 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel3 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel3 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel3 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel3 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesSumanWithContainerModel3 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerDeepakModel1.dispose();
    youtubePlayerDeepakModel2.dispose();
    shortsDeepakDetails1Model1.dispose();
    shortsDeepakDetails2Model1.dispose();
    shortsDeepakDetails3Model1.dispose();
    deepakTimestampModel1.dispose();
    deepakAISummaryModel1.dispose();
    conversationDeepakModel1.dispose();
    shortsDeepakDetails1Model2.dispose();
    shortsDeepakDetails2Model2.dispose();
    shortsDeepakDetails3Model2.dispose();
    deepakTimestampModel2.dispose();
    deepakAISummaryModel2.dispose();
    conversationDeepakModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesTirthankarWithContainerModel1.dispose();
    exploreEpisodesSrivatsramWithContainerModel1.dispose();
    exploreEpisodesRahulWithContainerModel1.dispose();
    exploreEpisodesZeenatWithContainerModel.dispose();
    exploreEpisodesSumanWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    exploreEpisodesTirthankarWithContainerModel2.dispose();
    exploreEpisodesSrivatsramWithContainerModel2.dispose();
    exploreEpisodesRahulWithContainerModel2.dispose();
    exploreEpisodesSumanWithContainerModel2.dispose();
    exploreEpisodesBudgetWithContainerModel3.dispose();
    exploreEpisodesTirthankarWithContainerModel3.dispose();
    exploreEpisodesSrivatsramWithContainerModel3.dispose();
    exploreEpisodesRahulWithContainerModel3.dispose();
    exploreEpisodesSumanWithContainerModel3.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
