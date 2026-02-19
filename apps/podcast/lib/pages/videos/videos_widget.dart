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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'videos_model.dart';
export 'videos_model.dart';

class VideosWidget extends StatefulWidget {
  const VideosWidget({
    super.key,
    String? selectedPage,
  }) : this.selectedPage = selectedPage ?? 'videos';

  final String selectedPage;

  static String routeName = 'Videos';
  static String routePath = '/videos';

  @override
  State<VideosWidget> createState() => _VideosWidgetState();
}

class _VideosWidgetState extends State<VideosWidget> {
  late VideosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (MediaQuery.sizeOf(context).width > 1025.0)
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x66000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 120.0,
                    child: custom_widgets.Header(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 120.0,
                    ),
                  ),
                ),
              if (MediaQuery.sizeOf(context).width < 1025.0)
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x66000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                  ),
                  child: wrapWithModel(
                    model: _model.headerMobileModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderMobileWidget(),
                  ),
                ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Go-to place for a deeper understanding of the MSME sector. \nConversations, Videos, Newsletters and more.',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF062A50),
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width <
                                                    valueOrDefault<double>(
                                                      kBreakpointSmall,
                                                      900.0,
                                                    )
                                                ? 12.0
                                                : 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.choiceChipsModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ChoiceChipsWidget(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .videosPageVideo1Model1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            VideosPageVideo1Widget(),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .videosPageVideo2Model1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            VideosPageVideo2Widget(),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 25.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .videosPageVideo3Model1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            VideosPageVideo3Widget(),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .videosPageVideo4Model1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            VideosPageVideo4Widget(),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 25.0)),
                                                ),
                                              ].divide(SizedBox(height: 25.0)),
                                            ),
                                          ),
                                        if (responsiveVisibility(
                                          context: context,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .videosPageVideo1Model2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      VideosPageVideo1Widget(),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .videosPageVideo2Model2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      VideosPageVideo2Widget(),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .videosPageVideo3Model2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      VideosPageVideo3Widget(),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .videosPageVideo4Model2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      VideosPageVideo4Widget(),
                                                ),
                                              ].divide(SizedBox(height: 20.0)),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        wrapWithModel(
                                          model: _model.mobileFooterModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MobileFooterWidget(),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
                                        wrapWithModel(
                                          model: _model.desktopFooterModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: DesktopFooterWidget(),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
