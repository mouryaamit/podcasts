import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/videos_page_video1_widget.dart';
import '/components/videos_page_video2_widget.dart';
import '/components/videos_page_video3_widget.dart';
import '/components/videos_page_video4_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'videos_widget.dart' show VideosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideosModel extends FlutterFlowModel<VideosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for ChoiceChips component.
  late ChoiceChipsModel choiceChipsModel;
  // Model for VideosPageVideo1 component.
  late VideosPageVideo1Model videosPageVideo1Model1;
  // Model for VideosPageVideo2 component.
  late VideosPageVideo2Model videosPageVideo2Model1;
  // Model for VideosPageVideo3 component.
  late VideosPageVideo3Model videosPageVideo3Model1;
  // Model for VideosPageVideo4 component.
  late VideosPageVideo4Model videosPageVideo4Model1;
  // Model for VideosPageVideo1 component.
  late VideosPageVideo1Model videosPageVideo1Model2;
  // Model for VideosPageVideo2 component.
  late VideosPageVideo2Model videosPageVideo2Model2;
  // Model for VideosPageVideo3 component.
  late VideosPageVideo3Model videosPageVideo3Model2;
  // Model for VideosPageVideo4 component.
  late VideosPageVideo4Model videosPageVideo4Model2;
  // Model for MobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for DesktopFooter component.
  late DesktopFooterModel desktopFooterModel;

  @override
  void initState(BuildContext context) {
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    choiceChipsModel = createModel(context, () => ChoiceChipsModel());
    videosPageVideo1Model1 =
        createModel(context, () => VideosPageVideo1Model());
    videosPageVideo2Model1 =
        createModel(context, () => VideosPageVideo2Model());
    videosPageVideo3Model1 =
        createModel(context, () => VideosPageVideo3Model());
    videosPageVideo4Model1 =
        createModel(context, () => VideosPageVideo4Model());
    videosPageVideo1Model2 =
        createModel(context, () => VideosPageVideo1Model());
    videosPageVideo2Model2 =
        createModel(context, () => VideosPageVideo2Model());
    videosPageVideo3Model2 =
        createModel(context, () => VideosPageVideo3Model());
    videosPageVideo4Model2 =
        createModel(context, () => VideosPageVideo4Model());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    desktopFooterModel = createModel(context, () => DesktopFooterModel());
  }

  @override
  void dispose() {
    headerMobileModel.dispose();
    choiceChipsModel.dispose();
    videosPageVideo1Model1.dispose();
    videosPageVideo2Model1.dispose();
    videosPageVideo3Model1.dispose();
    videosPageVideo4Model1.dispose();
    videosPageVideo1Model2.dispose();
    videosPageVideo2Model2.dispose();
    videosPageVideo3Model2.dispose();
    videosPageVideo4Model2.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
