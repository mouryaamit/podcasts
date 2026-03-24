import '/backend/api_requests/api_calls.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/videos/videos_dynamic_content/videos_dynamic_content_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'videos_copy_widget.dart' show VideosCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideosCopyModel extends FlutterFlowModel<VideosCopyWidget> {
  ///  Local state fields for this page.

  List<dynamic> videoList = [];
  void addToVideoList(dynamic item) => videoList.add(item);
  void removeFromVideoList(dynamic item) => videoList.remove(item);
  void removeAtIndexFromVideoList(int index) => videoList.removeAt(index);
  void insertAtIndexInVideoList(int index, dynamic item) =>
      videoList.insert(index, item);
  void updateVideoListAtIndex(int index, Function(dynamic) updateFn) =>
      videoList[index] = updateFn(videoList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (videos)] action in VideosCopy widget.
  ApiCallResponse? videoResult;
  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
