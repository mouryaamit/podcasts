import '/ai_summary/srivats_a_i_summary/srivats_a_i_summary_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/speaker_widget.dart';
import '/conversation/conversation_srivats/conversation_srivats_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/players/youtube_player/youtube_player_widget.dart';
import '/players/youtube_player_srivats_ram/youtube_player_srivats_ram_widget.dart';
import '/shorts/shorts_srivats/shorts_srivats_widget.dart';
import '/shorts/shorts_srivats_details1/shorts_srivats_details1_widget.dart';
import '/shorts/shorts_srivats_details2/shorts_srivats_details2_widget.dart';
import '/timestamp/srivats_timestamp/srivats_timestamp_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'podcast_details_srivats_ram_widget.dart'
    show PodcastDetailsSrivatsRamWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsSrivatsRamModel
    extends FlutterFlowModel<PodcastDetailsSrivatsRamWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayerSrivatsRam component.
  late YoutubePlayerSrivatsRamModel youtubePlayerSrivatsRamModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel;
  // Model for ShortsSrivats component.
  late ShortsSrivatsModel shortsSrivatsModel1;
  // Model for ShortsSrivatsDetails1 component.
  late ShortsSrivatsDetails1Model shortsSrivatsDetails1Model1;
  // Model for ShortsSrivatsDetails2 component.
  late ShortsSrivatsDetails2Model shortsSrivatsDetails2Model1;
  // Model for SrivatsTimestamp component.
  late SrivatsTimestampModel srivatsTimestampModel1;
  // Model for SrivatsAISummary component.
  late SrivatsAISummaryModel srivatsAISummaryModel1;
  // Model for ConversationSrivats component.
  late ConversationSrivatsModel conversationSrivatsModel1;
  // Model for ShortsSrivats component.
  late ShortsSrivatsModel shortsSrivatsModel2;
  // Model for ShortsSrivatsDetails1 component.
  late ShortsSrivatsDetails1Model shortsSrivatsDetails1Model2;
  // Model for ShortsSrivatsDetails2 component.
  late ShortsSrivatsDetails2Model shortsSrivatsDetails2Model2;
  // Model for SrivatsTimestamp component.
  late SrivatsTimestampModel srivatsTimestampModel2;
  // Model for SrivatsAISummary component.
  late SrivatsAISummaryModel srivatsAISummaryModel2;
  // Model for ConversationSrivats component.
  late ConversationSrivatsModel conversationSrivatsModel2;
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
  // Model for ExploreEpisodesRahulWithContainer component.
  late ExploreEpisodesRahulWithContainerModel
      exploreEpisodesRahulWithContainerModel1;
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel1;
  // Model for ExploreEpisodesSumanWithContainer component.
  late ExploreEpisodesSumanWithContainerModel
      exploreEpisodesSumanWithContainerModel1;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel2;
  // Model for ExploreEpisodesTirthankarWithContainer component.
  late ExploreEpisodesTirthankarWithContainerModel
      exploreEpisodesTirthankarWithContainerModel2;
  // Model for ExploreEpisodesRahulWithContainer component.
  late ExploreEpisodesRahulWithContainerModel
      exploreEpisodesRahulWithContainerModel2;
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel2;
  // Model for ExploreEpisodesSumanWithContainer component.
  late ExploreEpisodesSumanWithContainerModel
      exploreEpisodesSumanWithContainerModel2;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel3;
  // Model for ExploreEpisodesTirthankarWithContainer component.
  late ExploreEpisodesTirthankarWithContainerModel
      exploreEpisodesTirthankarWithContainerModel3;
  // Model for ExploreEpisodesRahulWithContainer component.
  late ExploreEpisodesRahulWithContainerModel
      exploreEpisodesRahulWithContainerModel3;
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel3;
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
    youtubePlayerSrivatsRamModel =
        createModel(context, () => YoutubePlayerSrivatsRamModel());
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsSrivatsModel1 = createModel(context, () => ShortsSrivatsModel());
    shortsSrivatsDetails1Model1 =
        createModel(context, () => ShortsSrivatsDetails1Model());
    shortsSrivatsDetails2Model1 =
        createModel(context, () => ShortsSrivatsDetails2Model());
    srivatsTimestampModel1 =
        createModel(context, () => SrivatsTimestampModel());
    srivatsAISummaryModel1 =
        createModel(context, () => SrivatsAISummaryModel());
    conversationSrivatsModel1 =
        createModel(context, () => ConversationSrivatsModel());
    shortsSrivatsModel2 = createModel(context, () => ShortsSrivatsModel());
    shortsSrivatsDetails1Model2 =
        createModel(context, () => ShortsSrivatsDetails1Model());
    shortsSrivatsDetails2Model2 =
        createModel(context, () => ShortsSrivatsDetails2Model());
    srivatsTimestampModel2 =
        createModel(context, () => SrivatsTimestampModel());
    srivatsAISummaryModel2 =
        createModel(context, () => SrivatsAISummaryModel());
    conversationSrivatsModel2 =
        createModel(context, () => ConversationSrivatsModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    exploreEpisodesBudgetWithContainerModel1 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel1 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesRahulWithContainerModel1 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel1 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel1 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel2 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel2 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesRahulWithContainerModel2 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel2 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel2 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel3 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel3 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesRahulWithContainerModel3 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel3 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel3 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerSrivatsRamModel.dispose();
    youtubePlayerModel.dispose();
    shortsSrivatsModel1.dispose();
    shortsSrivatsDetails1Model1.dispose();
    shortsSrivatsDetails2Model1.dispose();
    srivatsTimestampModel1.dispose();
    srivatsAISummaryModel1.dispose();
    conversationSrivatsModel1.dispose();
    shortsSrivatsModel2.dispose();
    shortsSrivatsDetails1Model2.dispose();
    shortsSrivatsDetails2Model2.dispose();
    srivatsTimestampModel2.dispose();
    srivatsAISummaryModel2.dispose();
    conversationSrivatsModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesTirthankarWithContainerModel1.dispose();
    exploreEpisodesRahulWithContainerModel1.dispose();
    exploreEpisodesZeenatWithContainerModel1.dispose();
    exploreEpisodesSumanWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    exploreEpisodesTirthankarWithContainerModel2.dispose();
    exploreEpisodesRahulWithContainerModel2.dispose();
    exploreEpisodesZeenatWithContainerModel2.dispose();
    exploreEpisodesSumanWithContainerModel2.dispose();
    exploreEpisodesBudgetWithContainerModel3.dispose();
    exploreEpisodesTirthankarWithContainerModel3.dispose();
    exploreEpisodesRahulWithContainerModel3.dispose();
    exploreEpisodesZeenatWithContainerModel3.dispose();
    exploreEpisodesSumanWithContainerModel3.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
