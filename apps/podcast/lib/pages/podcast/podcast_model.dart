import '/components/featured_episode_card_web_widget.dart';
import '/components/m_s_m_e_component_widget.dart';
import '/components/share_dialog_widget.dart';
import '/components/shorts_widget.dart';
import '/components/watch_now_dialog_widget.dart';
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
  // Model for featuredEpisodeCardWeb component.
  late FeaturedEpisodeCardWebModel featuredEpisodeCardWebModel;
  // Model for MSMEComponent component.
  late MSMEComponentModel mSMEComponentModel1;
  // Model for MSMEComponent component.
  late MSMEComponentModel mSMEComponentModel2;
  // Model for MSMEComponent component.
  late MSMEComponentModel mSMEComponentModel3;
  // Model for MSMEComponent component.
  late MSMEComponentModel mSMEComponentModel4;
  // Model for Shorts component.
  late ShortsModel shortsModel1;
  // Model for Shorts component.
  late ShortsModel shortsModel2;

  @override
  void initState(BuildContext context) {
    featuredEpisodeCardWebModel =
        createModel(context, () => FeaturedEpisodeCardWebModel());
    mSMEComponentModel1 = createModel(context, () => MSMEComponentModel());
    mSMEComponentModel2 = createModel(context, () => MSMEComponentModel());
    mSMEComponentModel3 = createModel(context, () => MSMEComponentModel());
    mSMEComponentModel4 = createModel(context, () => MSMEComponentModel());
    shortsModel1 = createModel(context, () => ShortsModel());
    shortsModel2 = createModel(context, () => ShortsModel());
  }

  @override
  void dispose() {
    featuredEpisodeCardWebModel.dispose();
    mSMEComponentModel1.dispose();
    mSMEComponentModel2.dispose();
    mSMEComponentModel3.dispose();
    mSMEComponentModel4.dispose();
    shortsModel1.dispose();
    shortsModel2.dispose();
  }
}
