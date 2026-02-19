import '/components/m_s_m_e_component_widget.dart';
import '/components/shorts_widget.dart';
import '/components/speaker_widget.dart';
import '/components/youtube_player_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'podcast_details_budget_widget.dart' show PodcastDetailsBudgetWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PodcastDetailsBudgetModel
    extends FlutterFlowModel<PodcastDetailsBudgetWidget> {
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
  // Model for Shorts component.
  late ShortsModel shortsModel1;
  // Model for Shorts component.
  late ShortsModel shortsModel2;
  // Model for Shorts component.
  late ShortsModel shortsModel3;
  // Model for Speaker component.
  late SpeakerModel speakerModel1;
  // Model for Speaker component.
  late SpeakerModel speakerModel2;
  // Model for Speaker component.
  late SpeakerModel speakerModel3;
  // Model for MSMEComponent component.
  late MSMEComponentModel mSMEComponentModel1;
  // Model for MSMEComponent component.
  late MSMEComponentModel mSMEComponentModel2;

  @override
  void initState(BuildContext context) {
    youtubePlayerModel = createModel(context, () => YoutubePlayerModel());
    shortsModel1 = createModel(context, () => ShortsModel());
    shortsModel2 = createModel(context, () => ShortsModel());
    shortsModel3 = createModel(context, () => ShortsModel());
    speakerModel1 = createModel(context, () => SpeakerModel());
    speakerModel2 = createModel(context, () => SpeakerModel());
    speakerModel3 = createModel(context, () => SpeakerModel());
    mSMEComponentModel1 = createModel(context, () => MSMEComponentModel());
    mSMEComponentModel2 = createModel(context, () => MSMEComponentModel());
  }

  @override
  void dispose() {
    youtubePlayerModel.dispose();
    shortsModel1.dispose();
    shortsModel2.dispose();
    shortsModel3.dispose();
    speakerModel1.dispose();
    speakerModel2.dispose();
    speakerModel3.dispose();
    mSMEComponentModel1.dispose();
    mSMEComponentModel2.dispose();
  }
}
