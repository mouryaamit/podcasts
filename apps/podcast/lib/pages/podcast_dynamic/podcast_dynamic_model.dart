import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/featured_episode_card_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/episodes/explore_episodes_budget_with_container_dynamic/explore_episodes_budget_with_container_dynamic_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'podcast_dynamic_widget.dart' show PodcastDynamicWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PodcastDynamicModel extends FlutterFlowModel<PodcastDynamicWidget> {
  ///  Local state fields for this page.

  List<dynamic> featuredEpisodes = [];
  void addToFeaturedEpisodes(dynamic item) => featuredEpisodes.add(item);
  void removeFromFeaturedEpisodes(dynamic item) =>
      featuredEpisodes.remove(item);
  void removeAtIndexFromFeaturedEpisodes(int index) =>
      featuredEpisodes.removeAt(index);
  void insertAtIndexInFeaturedEpisodes(int index, dynamic item) =>
      featuredEpisodes.insert(index, item);
  void updateFeaturedEpisodesAtIndex(int index, Function(dynamic) updateFn) =>
      featuredEpisodes[index] = updateFn(featuredEpisodes[index]);

  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for featuredEpisodeCard component.
  late FeaturedEpisodeCardModel featuredEpisodeCardModel;
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
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    featuredEpisodeCardModel.dispose();
    desktopFooterModel.dispose();
    mobileFooterModel.dispose();
  }
}
