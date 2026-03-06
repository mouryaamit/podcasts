import '/ai_summary/tirthankar_a_i_summary/tirthankar_a_i_summary_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/speaker_widget.dart';
import '/conversation/conversation_tirthankar/conversation_tirthankar_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_deepak_with_container/explore_episodes_deepak_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/players/youtube_player/youtube_player_widget.dart';
import '/players/youtube_player_tirthankar/youtube_player_tirthankar_widget.dart';
import '/shorts/shorts_tirthankar/shorts_tirthankar_widget.dart';
import '/shorts/shorts_tirthankar_details1/shorts_tirthankar_details1_widget.dart';
import '/shorts/shorts_tirthankar_details2/shorts_tirthankar_details2_widget.dart';
import '/timestamp/tirthankar_timestamp/tirthankar_timestamp_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'podcast_details_tirthankar_widget.dart'
    show PodcastDetailsTirthankarWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsTirthankarModel
    extends FlutterFlowModel<PodcastDetailsTirthankarWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayerTirthankar component.
  late YoutubePlayerTirthankarModel youtubePlayerTirthankarModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel;
  // Model for ShortsTirthankar component.
  late ShortsTirthankarModel shortsTirthankarModel1;
  // Model for ShortsTirthankarDetails1 component.
  late ShortsTirthankarDetails1Model shortsTirthankarDetails1Model1;
  // Model for ShortsTirthankarDetails2 component.
  late ShortsTirthankarDetails2Model shortsTirthankarDetails2Model1;
  // Model for TirthankarTimestamp component.
  late TirthankarTimestampModel tirthankarTimestampModel1;
  // Model for TirthankarAISummary component.
  late TirthankarAISummaryModel tirthankarAISummaryModel1;
  // Model for ConversationTirthankar component.
  late ConversationTirthankarModel conversationTirthankarModel1;
  // Model for ShortsTirthankar component.
  late ShortsTirthankarModel shortsTirthankarModel2;
  // Model for ShortsTirthankarDetails1 component.
  late ShortsTirthankarDetails1Model shortsTirthankarDetails1Model2;
  // Model for ShortsTirthankarDetails2 component.
  late ShortsTirthankarDetails2Model shortsTirthankarDetails2Model2;
  // Model for TirthankarTimestamp component.
  late TirthankarTimestampModel tirthankarTimestampModel2;
  // Model for TirthankarAISummary component.
  late TirthankarAISummaryModel tirthankarAISummaryModel2;
  // Model for ConversationTirthankar component.
  late ConversationTirthankarModel conversationTirthankarModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel1;
  // Model for Speaker component.
  late SpeakerModel speakerModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel3;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel1;
  // Model for ExploreEpisodesDeepakWithContainer component.
  late ExploreEpisodesDeepakWithContainerModel
      exploreEpisodesDeepakWithContainerModel;
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel1;
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
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel2;
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
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel3;
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
    youtubePlayerTirthankarModel =
        createModel(context, () => YoutubePlayerTirthankarModel());
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsTirthankarModel1 =
        createModel(context, () => ShortsTirthankarModel());
    shortsTirthankarDetails1Model1 =
        createModel(context, () => ShortsTirthankarDetails1Model());
    shortsTirthankarDetails2Model1 =
        createModel(context, () => ShortsTirthankarDetails2Model());
    tirthankarTimestampModel1 =
        createModel(context, () => TirthankarTimestampModel());
    tirthankarAISummaryModel1 =
        createModel(context, () => TirthankarAISummaryModel());
    conversationTirthankarModel1 =
        createModel(context, () => ConversationTirthankarModel());
    shortsTirthankarModel2 =
        createModel(context, () => ShortsTirthankarModel());
    shortsTirthankarDetails1Model2 =
        createModel(context, () => ShortsTirthankarDetails1Model());
    shortsTirthankarDetails2Model2 =
        createModel(context, () => ShortsTirthankarDetails2Model());
    tirthankarTimestampModel2 =
        createModel(context, () => TirthankarTimestampModel());
    tirthankarAISummaryModel2 =
        createModel(context, () => TirthankarAISummaryModel());
    conversationTirthankarModel2 =
        createModel(context, () => ConversationTirthankarModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    exploreEpisodesBudgetWithContainerModel1 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesDeepakWithContainerModel =
        createModel(context, () => ExploreEpisodesDeepakWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel1 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel1 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel1 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel1 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel2 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel2 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesRahulWithContainerModel2 =
        createModel(context, () => ExploreEpisodesRahulWithContainerModel());
    exploreEpisodesZeenatWithContainerModel2 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel2 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel3 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel3 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
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
    youtubePlayerTirthankarModel.dispose();
    youtubePlayerModel.dispose();
    shortsTirthankarModel1.dispose();
    shortsTirthankarDetails1Model1.dispose();
    shortsTirthankarDetails2Model1.dispose();
    tirthankarTimestampModel1.dispose();
    tirthankarAISummaryModel1.dispose();
    conversationTirthankarModel1.dispose();
    shortsTirthankarModel2.dispose();
    shortsTirthankarDetails1Model2.dispose();
    shortsTirthankarDetails2Model2.dispose();
    tirthankarTimestampModel2.dispose();
    tirthankarAISummaryModel2.dispose();
    conversationTirthankarModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesDeepakWithContainerModel.dispose();
    exploreEpisodesSrivatsramWithContainerModel1.dispose();
    exploreEpisodesRahulWithContainerModel1.dispose();
    exploreEpisodesZeenatWithContainerModel1.dispose();
    exploreEpisodesSumanWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    exploreEpisodesSrivatsramWithContainerModel2.dispose();
    exploreEpisodesRahulWithContainerModel2.dispose();
    exploreEpisodesZeenatWithContainerModel2.dispose();
    exploreEpisodesSumanWithContainerModel2.dispose();
    exploreEpisodesBudgetWithContainerModel3.dispose();
    exploreEpisodesSrivatsramWithContainerModel3.dispose();
    exploreEpisodesRahulWithContainerModel3.dispose();
    exploreEpisodesZeenatWithContainerModel3.dispose();
    exploreEpisodesSumanWithContainerModel3.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
