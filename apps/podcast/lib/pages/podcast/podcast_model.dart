import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/featured_episode_card_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shorts/shorts_budget_anil/shorts_budget_anil_widget.dart';
import '/shorts/shorts_budget_krishnan/shorts_budget_krishnan_widget.dart';
import '/shorts/shorts_budget_laveesh/shorts_budget_laveesh_widget.dart';
import '/shorts/shorts_budget_unni_krishnan/shorts_budget_unni_krishnan_widget.dart';
import '/shorts/shorts_rahul_details1/shorts_rahul_details1_widget.dart';
import '/shorts/shorts_rahul_details2/shorts_rahul_details2_widget.dart';
import '/shorts/shorts_rahul_details3/shorts_rahul_details3_widget.dart';
import '/shorts/shorts_srivats/shorts_srivats_widget.dart';
import '/shorts/shorts_srivats_details1/shorts_srivats_details1_widget.dart';
import '/shorts/shorts_srivats_details2/shorts_srivats_details2_widget.dart';
import '/shorts/shorts_suman/shorts_suman_widget.dart';
import '/shorts/shorts_suman_details1/shorts_suman_details1_widget.dart';
import '/shorts/shorts_suman_details2/shorts_suman_details2_widget.dart';
import '/shorts/shorts_tirthankar/shorts_tirthankar_widget.dart';
import '/shorts/shorts_tirthankar_details1/shorts_tirthankar_details1_widget.dart';
import '/shorts/shorts_tirthankar_details2/shorts_tirthankar_details2_widget.dart';
import '/shorts/shorts_zeenat/shorts_zeenat_widget.dart';
import '/shorts/shorts_zeenat_details1/shorts_zeenat_details1_widget.dart';
import '/shorts/shorts_zeenat_details2/shorts_zeenat_details2_widget.dart';
import '/shorts/shorts_zeenat_details3/shorts_zeenat_details3_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'podcast_widget.dart' show PodcastWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PodcastModel extends FlutterFlowModel<PodcastWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for featuredEpisodeCard component.
  late FeaturedEpisodeCardModel featuredEpisodeCardModel;
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
  // Model for ExploreEpisodesZeenatWithContainer component.
  late ExploreEpisodesZeenatWithContainerModel
      exploreEpisodesZeenatWithContainerModel2;
  // Model for ExploreEpisodesSumanWithContainer component.
  late ExploreEpisodesSumanWithContainerModel
      exploreEpisodesSumanWithContainerModel2;
  // Model for ShortsBudgetKrishnan component.
  late ShortsBudgetKrishnanModel shortsBudgetKrishnanModel;
  // Model for ShortsBudgetLaveesh component.
  late ShortsBudgetLaveeshModel shortsBudgetLaveeshModel;
  // Model for ShortsBudgetAnil component.
  late ShortsBudgetAnilModel shortsBudgetAnilModel;
  // Model for ShortsBudgetUnniKrishnan component.
  late ShortsBudgetUnniKrishnanModel shortsBudgetUnniKrishnanModel;
  // Model for ShortsTirthankar component.
  late ShortsTirthankarModel shortsTirthankarModel;
  // Model for ShortsTirthankarDetails1 component.
  late ShortsTirthankarDetails1Model shortsTirthankarDetails1Model;
  // Model for ShortsTirthankarDetails2 component.
  late ShortsTirthankarDetails2Model shortsTirthankarDetails2Model;
  // Model for ShortsSrivats component.
  late ShortsSrivatsModel shortsSrivatsModel;
  // Model for ShortsSrivatsDetails1 component.
  late ShortsSrivatsDetails1Model shortsSrivatsDetails1Model;
  // Model for ShortsSrivatsDetails2 component.
  late ShortsSrivatsDetails2Model shortsSrivatsDetails2Model;
  // Model for ShortsRahulDetails1 component.
  late ShortsRahulDetails1Model shortsRahulDetails1Model;
  // Model for ShortsRahulDetails2 component.
  late ShortsRahulDetails2Model shortsRahulDetails2Model;
  // Model for ShortsRahulDetails3 component.
  late ShortsRahulDetails3Model shortsRahulDetails3Model;
  // Model for ShortsZeenat component.
  late ShortsZeenatModel shortsZeenatModel;
  // Model for ShortsZeenatDetails1 component.
  late ShortsZeenatDetails1Model shortsZeenatDetails1Model;
  // Model for ShortsZeenatDetails2 component.
  late ShortsZeenatDetails2Model shortsZeenatDetails2Model;
  // Model for ShortsZeenatDetails3 component.
  late ShortsZeenatDetails3Model shortsZeenatDetails3Model;
  // Model for ShortsSuman component.
  late ShortsSumanModel shortsSumanModel;
  // Model for ShortsSumanDetails1 component.
  late ShortsSumanDetails1Model shortsSumanDetails1Model;
  // Model for ShortsSumanDetails2 component.
  late ShortsSumanDetails2Model shortsSumanDetails2Model;
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
    exploreEpisodesZeenatWithContainerModel2 =
        createModel(context, () => ExploreEpisodesZeenatWithContainerModel());
    exploreEpisodesSumanWithContainerModel2 =
        createModel(context, () => ExploreEpisodesSumanWithContainerModel());
    shortsBudgetKrishnanModel =
        createModel(context, () => ShortsBudgetKrishnanModel());
    shortsBudgetLaveeshModel =
        createModel(context, () => ShortsBudgetLaveeshModel());
    shortsBudgetAnilModel = createModel(context, () => ShortsBudgetAnilModel());
    shortsBudgetUnniKrishnanModel =
        createModel(context, () => ShortsBudgetUnniKrishnanModel());
    shortsTirthankarModel = createModel(context, () => ShortsTirthankarModel());
    shortsTirthankarDetails1Model =
        createModel(context, () => ShortsTirthankarDetails1Model());
    shortsTirthankarDetails2Model =
        createModel(context, () => ShortsTirthankarDetails2Model());
    shortsSrivatsModel = createModel(context, () => ShortsSrivatsModel());
    shortsSrivatsDetails1Model =
        createModel(context, () => ShortsSrivatsDetails1Model());
    shortsSrivatsDetails2Model =
        createModel(context, () => ShortsSrivatsDetails2Model());
    shortsRahulDetails1Model =
        createModel(context, () => ShortsRahulDetails1Model());
    shortsRahulDetails2Model =
        createModel(context, () => ShortsRahulDetails2Model());
    shortsRahulDetails3Model =
        createModel(context, () => ShortsRahulDetails3Model());
    shortsZeenatModel = createModel(context, () => ShortsZeenatModel());
    shortsZeenatDetails1Model =
        createModel(context, () => ShortsZeenatDetails1Model());
    shortsZeenatDetails2Model =
        createModel(context, () => ShortsZeenatDetails2Model());
    shortsZeenatDetails3Model =
        createModel(context, () => ShortsZeenatDetails3Model());
    shortsSumanModel = createModel(context, () => ShortsSumanModel());
    shortsSumanDetails1Model =
        createModel(context, () => ShortsSumanDetails1Model());
    shortsSumanDetails2Model =
        createModel(context, () => ShortsSumanDetails2Model());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    featuredEpisodeCardModel.dispose();
    exploreEpisodesBudgetWithContainerModel1.dispose();
    exploreEpisodesTirthankarWithContainerModel1.dispose();
    exploreEpisodesSrivatsramWithContainerModel1.dispose();
    exploreEpisodesRahulWithContainerModel1.dispose();
    exploreEpisodesZeenatWithContainerModel1.dispose();
    exploreEpisodesSumanWithContainerModel1.dispose();
    exploreEpisodesBudgetWithContainerModel2.dispose();
    exploreEpisodesTirthankarWithContainerModel2.dispose();
    exploreEpisodesSrivatsramWithContainerModel2.dispose();
    exploreEpisodesRahulWithContainerModel2.dispose();
    exploreEpisodesZeenatWithContainerModel2.dispose();
    exploreEpisodesSumanWithContainerModel2.dispose();
    shortsBudgetKrishnanModel.dispose();
    shortsBudgetLaveeshModel.dispose();
    shortsBudgetAnilModel.dispose();
    shortsBudgetUnniKrishnanModel.dispose();
    shortsTirthankarModel.dispose();
    shortsTirthankarDetails1Model.dispose();
    shortsTirthankarDetails2Model.dispose();
    shortsSrivatsModel.dispose();
    shortsSrivatsDetails1Model.dispose();
    shortsSrivatsDetails2Model.dispose();
    shortsRahulDetails1Model.dispose();
    shortsRahulDetails2Model.dispose();
    shortsRahulDetails3Model.dispose();
    shortsZeenatModel.dispose();
    shortsZeenatDetails1Model.dispose();
    shortsZeenatDetails2Model.dispose();
    shortsZeenatDetails3Model.dispose();
    shortsSumanModel.dispose();
    shortsSumanDetails1Model.dispose();
    shortsSumanDetails2Model.dispose();
    desktopFooterModel.dispose();
    mobileFooterModel.dispose();
  }
}
