import '/ai_summary/rahul_a_i_summary/rahul_a_i_summary_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/speaker_widget.dart';
import '/conversation/coversation_rahul/coversation_rahul_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/players/youtube_player/youtube_player_widget.dart';
import '/players/youtube_player_rahul/youtube_player_rahul_widget.dart';
import '/shorts/shorts_rahul_details1/shorts_rahul_details1_widget.dart';
import '/shorts/shorts_rahul_details2/shorts_rahul_details2_widget.dart';
import '/shorts/shorts_rahul_details3/shorts_rahul_details3_widget.dart';
import '/timestamp/rahul_timestamp/rahul_timestamp_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'podcast_details_rahul_widget.dart' show PodcastDetailsRahulWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsRahulModel
    extends FlutterFlowModel<PodcastDetailsRahulWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayerRahul component.
  late YoutubePlayerRahulModel youtubePlayerRahulModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel;
  // Model for ShortsRahulDetails2 component.
  late ShortsRahulDetails2Model shortsRahulDetails2Model1;
  // Model for ShortsRahulDetails1 component.
  late ShortsRahulDetails1Model shortsRahulDetails1Model1;
  // Model for ShortsRahulDetails3 component.
  late ShortsRahulDetails3Model shortsRahulDetails3Model1;
  // Model for RahulTimestamp component.
  late RahulTimestampModel rahulTimestampModel1;
  // Model for RahulAISummary component.
  late RahulAISummaryModel rahulAISummaryModel1;
  // Model for CoversationRahul component.
  late CoversationRahulModel coversationRahulModel1;
  // Model for ShortsRahulDetails2 component.
  late ShortsRahulDetails2Model shortsRahulDetails2Model2;
  // Model for ShortsRahulDetails1 component.
  late ShortsRahulDetails1Model shortsRahulDetails1Model2;
  // Model for ShortsRahulDetails3 component.
  late ShortsRahulDetails3Model shortsRahulDetails3Model2;
  // Model for RahulTimestamp component.
  late RahulTimestampModel rahulTimestampModel2;
  // Model for RahulAISummary component.
  late RahulAISummaryModel rahulAISummaryModel2;
  // Model for CoversationRahul component.
  late CoversationRahulModel coversationRahulModel2;
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
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel2;
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
  // Model for ExploreEpisodesSrivatsramWithContainer component.
  late ExploreEpisodesSrivatsramWithContainerModel
      exploreEpisodesSrivatsramWithContainerModel3;
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
    youtubePlayerRahulModel =
        createModel(context, () => YoutubePlayerRahulModel());
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsRahulDetails2Model1 =
        createModel(context, () => ShortsRahulDetails2Model());
    shortsRahulDetails1Model1 =
        createModel(context, () => ShortsRahulDetails1Model());
    shortsRahulDetails3Model1 =
        createModel(context, () => ShortsRahulDetails3Model());
    rahulTimestampModel1 = createModel(context, () => RahulTimestampModel());
    rahulAISummaryModel1 = createModel(context, () => RahulAISummaryModel());
    coversationRahulModel1 =
        createModel(context, () => CoversationRahulModel());
    shortsRahulDetails2Model2 =
        createModel(context, () => ShortsRahulDetails2Model());
    shortsRahulDetails1Model2 =
        createModel(context, () => ShortsRahulDetails1Model());
    shortsRahulDetails3Model2 =
        createModel(context, () => ShortsRahulDetails3Model());
    rahulTimestampModel2 = createModel(context, () => RahulTimestampModel());
    rahulAISummaryModel2 = createModel(context, () => RahulAISummaryModel());
    coversationRahulModel2 =
        createModel(context, () => CoversationRahulModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    exploreEpisodesBudgetWithContainerModel1 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel1 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel1 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesZeenatWithContainerModel1 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel1 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel2 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel2 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel2 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
    exploreEpisodesZeenatWithContainerModel2 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel2 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    exploreEpisodesBudgetWithContainerModel3 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesTirthankarWithContainerModel3 = createModel(
        context, () => ExploreEpisodesTirthankarWithContainerModel());
    exploreEpisodesSrivatsramWithContainerModel3 = createModel(
        context, () => ExploreEpisodesSrivatsramWithContainerModel());
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
    youtubePlayerRahulModel.dispose();
    youtubePlayerModel.dispose();
    shortsRahulDetails2Model1.dispose();
    shortsRahulDetails1Model1.dispose();
    shortsRahulDetails3Model1.dispose();
    rahulTimestampModel1.dispose();
    rahulAISummaryModel1.dispose();
    coversationRahulModel1.dispose();
    shortsRahulDetails2Model2.dispose();
    shortsRahulDetails1Model2.dispose();
    shortsRahulDetails3Model2.dispose();
    rahulTimestampModel2.dispose();
    rahulAISummaryModel2.dispose();
    coversationRahulModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesTirthankarWithContainerModel1.dispose();
    exploreEpisodesSrivatsramWithContainerModel1.dispose();
    exploreEpisodesZeenatWithContainerModel1.dispose();
    exploreEpisodesSumanWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    exploreEpisodesTirthankarWithContainerModel2.dispose();
    exploreEpisodesSrivatsramWithContainerModel2.dispose();
    exploreEpisodesZeenatWithContainerModel2.dispose();
    exploreEpisodesSumanWithContainerModel2.dispose();
    exploreEpisodesBudgetWithContainerModel3.dispose();
    exploreEpisodesTirthankarWithContainerModel3.dispose();
    exploreEpisodesSrivatsramWithContainerModel3.dispose();
    exploreEpisodesZeenatWithContainerModel3.dispose();
    exploreEpisodesSumanWithContainerModel3.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
