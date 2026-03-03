import '/components/choice_chips_widget.dart';
import '/components/conversation_zeenat_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/explore_episodes_budget_with_container_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/shorts_zeenat_details1_widget.dart';
import '/components/shorts_zeenat_details2_widget.dart';
import '/components/shorts_zeenat_details3_widget.dart';
import '/components/shorts_zeenat_widget.dart';
import '/components/speaker_widget.dart';
import '/components/youtube_player_zeenat_widget.dart';
import '/components/zeenat_a_i_summary_widget.dart';
import '/components/zeenat_timestamp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'podcast_details_zeenat_widget.dart' show PodcastDetailsZeenatWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PodcastDetailsZeenatModel
    extends FlutterFlowModel<PodcastDetailsZeenatWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayerZeenat component.
  late YoutubePlayerZeenatModel youtubePlayerZeenatModel1;
  // Model for YoutubePlayerZeenat component.
  late YoutubePlayerZeenatModel youtubePlayerZeenatModel2;
  // Model for ShortsZeenat component.
  late ShortsZeenatModel shortsZeenatModel1;
  // Model for ShortsZeenatDetails1 component.
  late ShortsZeenatDetails1Model shortsZeenatDetails1Model1;
  // Model for ShortsZeenatDetails2 component.
  late ShortsZeenatDetails2Model shortsZeenatDetails2Model1;
  // Model for ShortsZeenatDetails3 component.
  late ShortsZeenatDetails3Model shortsZeenatDetails3Model1;
  // Model for ZeenatTimestamp component.
  late ZeenatTimestampModel zeenatTimestampModel1;
  // Model for ZeenatAISummary component.
  late ZeenatAISummaryModel zeenatAISummaryModel1;
  // Model for ConversationZeenat component.
  late ConversationZeenatModel conversationZeenatModel1;
  // Model for ShortsZeenat component.
  late ShortsZeenatModel shortsZeenatModel2;
  // Model for ShortsZeenatDetails1 component.
  late ShortsZeenatDetails1Model shortsZeenatDetails1Model2;
  // Model for ShortsZeenatDetails2 component.
  late ShortsZeenatDetails2Model shortsZeenatDetails2Model2;
  // Model for ShortsZeenatDetails3 component.
  late ShortsZeenatDetails3Model shortsZeenatDetails3Model2;
  // Model for ZeenatTimestamp component.
  late ZeenatTimestampModel zeenatTimestampModel2;
  // Model for ZeenatAISummary component.
  late ZeenatAISummaryModel zeenatAISummaryModel2;
  // Model for ConversationZeenat component.
  late ConversationZeenatModel conversationZeenatModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel1;
  // Model for Speaker component.
  late SpeakerModel speakerModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel3;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel1;
  // Model for ExploreEpisodesBudgetWithContainer component.
  late ExploreEpisodesBudgetWithContainerModel
      exploreEpisodesBudgetWithContainerModel2;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    youtubePlayerZeenatModel1 =
        createModel(context, () => YoutubePlayerZeenatModel());
    youtubePlayerZeenatModel2 =
        createModel(context, () => YoutubePlayerZeenatModel());
    shortsZeenatModel1 = createModel(context, () => ShortsZeenatModel());
    shortsZeenatDetails1Model1 =
        createModel(context, () => ShortsZeenatDetails1Model());
    shortsZeenatDetails2Model1 =
        createModel(context, () => ShortsZeenatDetails2Model());
    shortsZeenatDetails3Model1 =
        createModel(context, () => ShortsZeenatDetails3Model());
    zeenatTimestampModel1 = createModel(context, () => ZeenatTimestampModel());
    zeenatAISummaryModel1 = createModel(context, () => ZeenatAISummaryModel());
    conversationZeenatModel1 =
        createModel(context, () => ConversationZeenatModel());
    shortsZeenatModel2 = createModel(context, () => ShortsZeenatModel());
    shortsZeenatDetails1Model2 =
        createModel(context, () => ShortsZeenatDetails1Model());
    shortsZeenatDetails2Model2 =
        createModel(context, () => ShortsZeenatDetails2Model());
    shortsZeenatDetails3Model2 =
        createModel(context, () => ShortsZeenatDetails3Model());
    zeenatTimestampModel2 = createModel(context, () => ZeenatTimestampModel());
    zeenatAISummaryModel2 = createModel(context, () => ZeenatAISummaryModel());
    conversationZeenatModel2 =
        createModel(context, () => ConversationZeenatModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    exploreEpisodesBudgetWithContainerModel1 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    exploreEpisodesBudgetWithContainerModel2 =
        createModel(context, () => ExploreEpisodesBudgetWithContainerModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerZeenatModel1.dispose();
    youtubePlayerZeenatModel2.dispose();
    shortsZeenatModel1.dispose();
    shortsZeenatDetails1Model1.dispose();
    shortsZeenatDetails2Model1.dispose();
    shortsZeenatDetails3Model1.dispose();
    zeenatTimestampModel1.dispose();
    zeenatAISummaryModel1.dispose();
    conversationZeenatModel1.dispose();
    shortsZeenatModel2.dispose();
    shortsZeenatDetails1Model2.dispose();
    shortsZeenatDetails2Model2.dispose();
    shortsZeenatDetails3Model2.dispose();
    zeenatTimestampModel2.dispose();
    zeenatAISummaryModel2.dispose();
    conversationZeenatModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
