import '/components/explore_episodes_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'videos_widget.dart' show VideosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideosModel extends FlutterFlowModel<VideosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for ExploreEpisodes component.
  late ExploreEpisodesModel exploreEpisodesModel1;
  // Model for ExploreEpisodes component.
  late ExploreEpisodesModel exploreEpisodesModel2;

  @override
  void initState(BuildContext context) {
    exploreEpisodesModel1 = createModel(context, () => ExploreEpisodesModel());
    exploreEpisodesModel2 = createModel(context, () => ExploreEpisodesModel());
  }

  @override
  void dispose() {
    exploreEpisodesModel1.dispose();
    exploreEpisodesModel2.dispose();
  }
}
