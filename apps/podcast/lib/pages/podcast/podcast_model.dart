import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/explore_episodes_budget_widget.dart';
import '/components/explore_episodes_zeenat_widget.dart';
import '/components/featured_episode_card_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/shorts_budget_anil_widget.dart';
import '/components/shorts_budget_krishnan_widget.dart';
import '/components/shorts_budget_laveesh_widget.dart';
import '/components/shorts_budget_special_widget.dart';
import '/components/shorts_budget_unni_krishnan_widget.dart';
import '/components/shorts_srivats_widget.dart';
import '/components/shorts_suman_widget.dart';
import '/components/shorts_tirthankar_widget.dart';
import '/components/shorts_zeenat_details1_widget.dart';
import '/components/shorts_zeenat_details2_widget.dart';
import '/components/shorts_zeenat_details3_widget.dart';
import '/components/shorts_zeenat_widget.dart';
import '/components/watch_now_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'podcast_widget.dart' show PodcastWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PodcastModel extends FlutterFlowModel<PodcastWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for featuredEpisodeCard component.
  late FeaturedEpisodeCardModel featuredEpisodeCardModel;
  // Model for ExploreEpisodesBudget component.
  late ExploreEpisodesBudgetModel exploreEpisodesBudgetModel1;
  // Model for ExploreEpisodesZeenat component.
  late ExploreEpisodesZeenatModel exploreEpisodesZeenatModel1;
  // Model for ExploreEpisodesBudget component.
  late ExploreEpisodesBudgetModel exploreEpisodesBudgetModel2;
  // Model for ExploreEpisodesZeenat component.
  late ExploreEpisodesZeenatModel exploreEpisodesZeenatModel2;
  // Model for ShortsBudgetSpecial component.
  late ShortsBudgetSpecialModel shortsBudgetSpecialModel;
  // Model for ShortsTirthankar component.
  late ShortsTirthankarModel shortsTirthankarModel;
  // Model for ShortsSrivats component.
  late ShortsSrivatsModel shortsSrivatsModel;
  // Model for ShortsZeenat component.
  late ShortsZeenatModel shortsZeenatModel;
  // Model for ShortsSuman component.
  late ShortsSumanModel shortsSumanModel;
  // Model for ShortsBudgetKrishnan component.
  late ShortsBudgetKrishnanModel shortsBudgetKrishnanModel;
  // Model for ShortsBudgetLaveesh component.
  late ShortsBudgetLaveeshModel shortsBudgetLaveeshModel;
  // Model for ShortsBudgetAnil component.
  late ShortsBudgetAnilModel shortsBudgetAnilModel;
  // Model for ShortsBudgetUnniKrishnan component.
  late ShortsBudgetUnniKrishnanModel shortsBudgetUnniKrishnanModel;
  // Model for ShortsZeenatDetails1 component.
  late ShortsZeenatDetails1Model shortsZeenatDetails1Model;
  // Model for ShortsZeenatDetails2 component.
  late ShortsZeenatDetails2Model shortsZeenatDetails2Model;
  // Model for ShortsZeenatDetails3 component.
  late ShortsZeenatDetails3Model shortsZeenatDetails3Model;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    featuredEpisodeCardModel =
        createModel(context, () => FeaturedEpisodeCardModel());
    exploreEpisodesBudgetModel1 =
        createModel(context, () => ExploreEpisodesBudgetModel());
    exploreEpisodesZeenatModel1 =
        createModel(context, () => ExploreEpisodesZeenatModel());
    exploreEpisodesBudgetModel2 =
        createModel(context, () => ExploreEpisodesBudgetModel());
    exploreEpisodesZeenatModel2 =
        createModel(context, () => ExploreEpisodesZeenatModel());
    shortsBudgetSpecialModel =
        createModel(context, () => ShortsBudgetSpecialModel());
    shortsTirthankarModel = createModel(context, () => ShortsTirthankarModel());
    shortsSrivatsModel = createModel(context, () => ShortsSrivatsModel());
    shortsZeenatModel = createModel(context, () => ShortsZeenatModel());
    shortsSumanModel = createModel(context, () => ShortsSumanModel());
    shortsBudgetKrishnanModel =
        createModel(context, () => ShortsBudgetKrishnanModel());
    shortsBudgetLaveeshModel =
        createModel(context, () => ShortsBudgetLaveeshModel());
    shortsBudgetAnilModel = createModel(context, () => ShortsBudgetAnilModel());
    shortsBudgetUnniKrishnanModel =
        createModel(context, () => ShortsBudgetUnniKrishnanModel());
    shortsZeenatDetails1Model =
        createModel(context, () => ShortsZeenatDetails1Model());
    shortsZeenatDetails2Model =
        createModel(context, () => ShortsZeenatDetails2Model());
    shortsZeenatDetails3Model =
        createModel(context, () => ShortsZeenatDetails3Model());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    featuredEpisodeCardModel.dispose();
    exploreEpisodesBudgetModel1.dispose();
    exploreEpisodesZeenatModel1.dispose();
    exploreEpisodesBudgetModel2.dispose();
    exploreEpisodesZeenatModel2.dispose();
    shortsBudgetSpecialModel.dispose();
    shortsTirthankarModel.dispose();
    shortsSrivatsModel.dispose();
    shortsZeenatModel.dispose();
    shortsSumanModel.dispose();
    shortsBudgetKrishnanModel.dispose();
    shortsBudgetLaveeshModel.dispose();
    shortsBudgetAnilModel.dispose();
    shortsBudgetUnniKrishnanModel.dispose();
    shortsZeenatDetails1Model.dispose();
    shortsZeenatDetails2Model.dispose();
    shortsZeenatDetails3Model.dispose();
    desktopFooterModel.dispose();
    mobileFooterModel.dispose();
  }
}
