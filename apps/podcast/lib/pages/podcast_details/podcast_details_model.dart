import '/components/explore_episodes_budget_widget.dart';
import '/components/shorts_zeenat_hamirani_widget.dart';
import '/components/speaker_widget.dart';
import '/components/timestamp_widget.dart';
import '/components/youtube_player_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'podcast_details_widget.dart' show PodcastDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PodcastDetailsModel extends FlutterFlowModel<PodcastDetailsWidget> {
  ///  Local state fields for this page.

  int selectedIndex = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for YoutubePlayer component.
  late YoutubePlayerModel youtubePlayerModel;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel1;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel2;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel3;
  // Model for Timestamp component.
  late TimestampModel timestampModel1;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel4;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel5;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel6;
  // Model for ShortsZeenatHamirani component.
  late ShortsZeenatHamiraniModel shortsZeenatHamiraniModel7;
  // Model for Timestamp component.
  late TimestampModel timestampModel2;
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
  // Model for ExploreEpisodesBudget component.
  late ExploreEpisodesBudgetModel exploreEpisodesBudgetModel;

  @override
  void initState(BuildContext context) {
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsZeenatHamiraniModel1 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    shortsZeenatHamiraniModel2 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    shortsZeenatHamiraniModel3 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    timestampModel1 = createModel(context, () => TimestampModel());
    shortsZeenatHamiraniModel4 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    shortsZeenatHamiraniModel5 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    shortsZeenatHamiraniModel6 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    shortsZeenatHamiraniModel7 =
        createModel(context, () => ShortsZeenatHamiraniModel());
    timestampModel2 = createModel(context, () => TimestampModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    speakerModel4 = createModel(context, () => SpeakerModel());
    speakerModel5 = createModel(context, () => SpeakerModel());
    exploreEpisodesBudgetModel =
        createModel(context, () => ExploreEpisodesBudgetModel());
  }

  @override
  void dispose() {
    youtubePlayerModel.dispose();
    shortsZeenatHamiraniModel1.dispose();
    shortsZeenatHamiraniModel2.dispose();
    shortsZeenatHamiraniModel3.dispose();
    timestampModel1.dispose();
    shortsZeenatHamiraniModel4.dispose();
    shortsZeenatHamiraniModel5.dispose();
    shortsZeenatHamiraniModel6.dispose();
    shortsZeenatHamiraniModel7.dispose();
    timestampModel2.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    speakerModel4.dispose();
    speakerModel5.dispose();
    exploreEpisodesBudgetModel.dispose();
  }
}
