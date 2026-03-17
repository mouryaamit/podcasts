import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/videos/videos_content_empty/videos_content_empty_widget.dart';
import '/videos/videos_page_video1/videos_page_video1_widget.dart';
import '/videos/videos_page_video2/videos_page_video2_widget.dart';
import '/videos/videos_page_video3/videos_page_video3_widget.dart';
import '/videos/videos_page_video4/videos_page_video4_widget.dart';
import '/videos/videos_page_video5/videos_page_video5_widget.dart';
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
  // Model for VideosPageVideo5 component.
  late VideosPageVideo5Model videosPageVideo5Model1;
  // Model for VideosPageVideo1 component.
  late VideosPageVideo1Model videosPageVideo1Model1;
  // Model for VideosPageVideo2 component.
  late VideosPageVideo2Model videosPageVideo2Model1;
  // Model for VideosPageVideo3 component.
  late VideosPageVideo3Model videosPageVideo3Model1;
  // Model for VideosPageVideo4 component.
  late VideosPageVideo4Model videosPageVideo4Model1;
  // Model for Videos_contentEmpty component.
  late VideosContentEmptyModel videosContentEmptyModel;
  // Model for VideosPageVideo5 component.
  late VideosPageVideo5Model videosPageVideo5Model2;
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
    videosPageVideo5Model1 =
        createModel(context, () => VideosPageVideo5Model());
    videosPageVideo1Model1 =
        createModel(context, () => VideosPageVideo1Model());
    videosPageVideo2Model1 =
        createModel(context, () => VideosPageVideo2Model());
    videosPageVideo3Model1 =
        createModel(context, () => VideosPageVideo3Model());
    videosPageVideo4Model1 =
        createModel(context, () => VideosPageVideo4Model());
    videosContentEmptyModel =
        createModel(context, () => VideosContentEmptyModel());
    videosPageVideo5Model2 =
        createModel(context, () => VideosPageVideo5Model());
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
    videosPageVideo5Model1.dispose();
    videosPageVideo1Model1.dispose();
    videosPageVideo2Model1.dispose();
    videosPageVideo3Model1.dispose();
    videosPageVideo4Model1.dispose();
    videosContentEmptyModel.dispose();
    videosPageVideo5Model2.dispose();
    videosPageVideo1Model2.dispose();
    videosPageVideo2Model2.dispose();
    videosPageVideo3Model2.dispose();
    videosPageVideo4Model2.dispose();
    mobileFooterModel.dispose();
    desktopFooterModel.dispose();
  }
}
