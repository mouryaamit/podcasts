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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'videos_copy_model.dart';
export 'videos_copy_model.dart';

class VideosCopyWidget extends StatefulWidget {
  const VideosCopyWidget({
    super.key,
    String? selectedPage,
  }) : this.selectedPage = selectedPage ?? 'videos';

  final String selectedPage;

  static String routeName = 'VideosCopy';
  static String routePath = '/videosCopy';

  @override
  State<VideosCopyWidget> createState() => _VideosCopyWidgetState();
}

class _VideosCopyWidgetState extends State<VideosCopyWidget> {
  late VideosCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideosCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.videoResult = await ApiHostGroup.videosCall.call();

      if ((_model.videoResult?.succeeded ?? true)) {
        _model.videoList = getJsonField(
          (_model.videoResult?.jsonBody ?? ''),
          r'''$.items''',
          true,
        )!
            .toList()
            .cast<dynamic>();
        safeSetState(() {});
      }
    });

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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  valueOrDefault<double>(
                                                    kBreakpointSmall,
                                                    900.0,
                                                  )
                                              ? 20.0
                                              : 32.0,
                                          0.0,
                                        ),
                                        0.0,
                                        0.0),
                                    child: Text(
                                      'Resources',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
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
                                                ? 24.0
                                                : 32.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.choiceChipsModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ChoiceChipsWidget(
                                    activeTab: 'videos',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 50.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final dynamicVideos =
                                                  _model.videoList.toList();

                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              valueOrDefault<
                                                                  double>(
                                                                kBreakpointSmall,
                                                                600.0,
                                                              )
                                                          ? 1
                                                          : 2,
                                                  crossAxisSpacing: 10.0,
                                                  mainAxisSpacing: 10.0,
                                                  childAspectRatio: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        valueOrDefault<double>(
                                                          kBreakpointSmall,
                                                          600.0,
                                                        )) {
                                                      return 0.7;
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >=
                                                            600.0) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <=
                                                            1024.0)) {
                                                      return 0.8;
                                                    } else {
                                                      return 1.2;
                                                    }
                                                  }(),
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: dynamicVideos.length,
                                                itemBuilder: (context,
                                                    dynamicVideosIndex) {
                                                  final dynamicVideosItem =
                                                      dynamicVideos[
                                                          dynamicVideosIndex];
                                                  return Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child:
                                                        VideosDynamicContentWidget(
                                                      key: Key(
                                                          'Key05k_${dynamicVideosIndex}_of_${dynamicVideos.length}'),
                                                      videoData:
                                                          dynamicVideosItem,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
