import '/components/explore_episodes_widget.dart';
import '/components/featured_episode_card_widget.dart';
import '/components/share_dialog_widget.dart';
import '/components/shorts_budget_special_widget.dart';
import '/components/shorts_srivats_ram_widget.dart';
import '/components/shorts_suman_chowdhury_widget.dart';
import '/components/shorts_tirthankar_patnaik_widget.dart';
import '/components/shorts_zeenat_hamirani_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'podcast_widget.dart' show PodcastWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PodcastModel extends FlutterFlowModel<PodcastWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for featuredEpisodeCard component.
  late FeaturedEpisodeCardModel featuredEpisodeCardModel;
  // Model for ExploreEpisodes component.
  late ExploreEpisodesModel exploreEpisodesModel;
  // Model for ShortsBudgetSpecial component.
  late ShortsBudgetSpecialModel shortsBudgetSpecialModel;
  // Model for ShortsTirthankarPatnaik component.
  late ShortsTirthankarPatnaikModel shortsTirthankarPatnaikModel;
  // Model for ShortsSrivatsRam component.
  late ShortsSrivatsRamModel shortsSrivatsRamModel;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel;
  // Model for ShortsSumanChowdhury component.
  late ShortsSumanChowdhuryModel shortsSumanChowdhuryModel;

  @override
  void initState(BuildContext context) {
    featuredEpisodeCardModel =
        createModel(context, () => FeaturedEpisodeCardModel());
    exploreEpisodesModel = createModel(context, () => ExploreEpisodesModel());
    shortsBudgetSpecialModel =
        createModel(context, () => ShortsBudgetSpecialModel());
    shortsTirthankarPatnaikModel =
        createModel(context, () => ShortsTirthankarPatnaikModel());
    shortsSrivatsRamModel = createModel(context, () => ShortsSrivatsRamModel());
    shortsZeenatHamiraniModel =
        createModel(context, () => ShortsZeenatHamiraniModel());
    shortsSumanChowdhuryModel =
        createModel(context, () => ShortsSumanChowdhuryModel());
  }

  @override
  void dispose() {
    featuredEpisodeCardModel.dispose();
    exploreEpisodesModel.dispose();
    shortsBudgetSpecialModel.dispose();
    shortsTirthankarPatnaikModel.dispose();
    shortsSrivatsRamModel.dispose();
    shortsZeenatHamiraniModel.dispose();
    shortsSumanChowdhuryModel.dispose();
  }
}
