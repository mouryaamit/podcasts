import '/components/budget_a_i_summary_widget.dart';
import '/components/budget_conversation_widget.dart';
import '/components/budget_timestamp_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/explore_episodes_zeenat_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/shorts_budget_anil_widget.dart';
import '/components/shorts_budget_krishnan_widget.dart';
import '/components/shorts_budget_laveesh_widget.dart';
import '/components/shorts_budget_unni_krishnan_widget.dart';
import '/components/speaker_widget.dart';
import '/components/youtube_player_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
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

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel;
  // Model for ShortsBudgetKrishnan component.
  late ShortsBudgetKrishnanModel shortsBudgetKrishnanModel1;
  // Model for ShortsBudgetLaveesh component.
  late ShortsBudgetLaveeshModel shortsBudgetLaveeshModel1;
  // Model for ShortsBudgetAnil component.
  late ShortsBudgetAnilModel shortsBudgetAnilModel1;
  // Model for ShortsBudgetUnniKrishnan component.
  late ShortsBudgetUnniKrishnanModel shortsBudgetUnniKrishnanModel1;
  // Model for BudgetTimestamp component.
  late BudgetTimestampModel budgetTimestampModel1;
  // Model for BudgetAISummary component.
  late BudgetAISummaryModel budgetAISummaryModel1;
  // Model for BudgetConversation component.
  late BudgetConversationModel budgetConversationModel1;
  // Model for ShortsBudgetKrishnan component.
  late ShortsBudgetKrishnanModel shortsBudgetKrishnanModel2;
  // Model for ShortsBudgetLaveesh component.
  late ShortsBudgetLaveeshModel shortsBudgetLaveeshModel2;
  // Model for ShortsBudgetAnil component.
  late ShortsBudgetAnilModel shortsBudgetAnilModel2;
  // Model for ShortsBudgetUnniKrishnan component.
  late ShortsBudgetUnniKrishnanModel shortsBudgetUnniKrishnanModel2;
  // Model for BudgetTimestamp component.
  late BudgetTimestampModel budgetTimestampModel2;
  // Model for BudgetAISummary component.
  late BudgetAISummaryModel budgetAISummaryModel2;
  // Model for BudgetConversation component.
  late BudgetConversationModel budgetConversationModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel1;
  // Model for Speaker component.
  late SpeakerModel speakerModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel3;
  // Model for Speaker component.
  late SpeakerModel speakerModel4;
  // Model for Speaker component.
  late SpeakerModel speakerModel5;
  // Model for ExploreEpisodesZeenat component.
  late ExploreEpisodesZeenatModel exploreEpisodesZeenatModel1;
  // Model for ExploreEpisodesZeenat component.
  late ExploreEpisodesZeenatModel exploreEpisodesZeenatModel2;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsBudgetKrishnanModel1 =
        createModel(context, () => ShortsBudgetKrishnanModel());
    shortsBudgetLaveeshModel1 =
        createModel(context, () => ShortsBudgetLaveeshModel());
    shortsBudgetAnilModel1 =
        createModel(context, () => ShortsBudgetAnilModel());
    shortsBudgetUnniKrishnanModel1 =
        createModel(context, () => ShortsBudgetUnniKrishnanModel());
    budgetTimestampModel1 = createModel(context, () => BudgetTimestampModel());
    budgetAISummaryModel1 = createModel(context, () => BudgetAISummaryModel());
    budgetConversationModel1 =
        createModel(context, () => BudgetConversationModel());
    shortsBudgetKrishnanModel2 =
        createModel(context, () => ShortsBudgetKrishnanModel());
    shortsBudgetLaveeshModel2 =
        createModel(context, () => ShortsBudgetLaveeshModel());
    shortsBudgetAnilModel2 =
        createModel(context, () => ShortsBudgetAnilModel());
    shortsBudgetUnniKrishnanModel2 =
        createModel(context, () => ShortsBudgetUnniKrishnanModel());
    budgetTimestampModel2 = createModel(context, () => BudgetTimestampModel());
    budgetAISummaryModel2 = createModel(context, () => BudgetAISummaryModel());
    budgetConversationModel2 =
        createModel(context, () => BudgetConversationModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    speakerModel4 = createModel(context, () => SpeakerModel());
    speakerModel5 = createModel(context, () => SpeakerModel());
    exploreEpisodesZeenatModel1 =
        createModel(context, () => ExploreEpisodesZeenatModel());
    exploreEpisodesZeenatModel2 =
        createModel(context, () => ExploreEpisodesZeenatModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    youtubePlayerModel.dispose();
    shortsBudgetKrishnanModel1.dispose();
    shortsBudgetLaveeshModel1.dispose();
    shortsBudgetAnilModel1.dispose();
    shortsBudgetUnniKrishnanModel1.dispose();
    budgetTimestampModel1.dispose();
    budgetAISummaryModel1.dispose();
    budgetConversationModel1.dispose();
    shortsBudgetKrishnanModel2.dispose();
    shortsBudgetLaveeshModel2.dispose();
    shortsBudgetAnilModel2.dispose();
    shortsBudgetUnniKrishnanModel2.dispose();
    budgetTimestampModel2.dispose();
    budgetAISummaryModel2.dispose();
    budgetConversationModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    speakerModel4.dispose();
    speakerModel5.dispose();
    exploreEpisodesZeenatModel1.dispose();
    exploreEpisodesZeenatModel2.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
