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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'podcast_model.dart';
export 'podcast_model.dart';

class PodcastWidget extends StatefulWidget {
  const PodcastWidget({super.key});

  static String routeName = 'Podcast';
  static String routePath = '/podcast';

  @override
  State<PodcastWidget> createState() => _PodcastWidgetState();
}

class _PodcastWidgetState extends State<PodcastWidget> {
  late PodcastModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PodcastModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Container(
                    width: 1450.9,
                    height: 754.0,
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
                                  0.0, 40.0, 0.0, 0.0),
                              child: Text(
                                'Resources',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF062A50),
                                      fontSize: 52.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: FlutterFlowChoiceChips(
                                options: [
                                  ChipData('Podcast'),
                                  ChipData('Videos'),
                                  ChipData('Newsletter')
                                ],
                                onChanged: (val) => safeSetState(() =>
                                    _model.choiceChipsValue = val?.firstOrNull),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFF1DB954),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    shadows: [
                                      Shadow(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 2.0,
                                      )
                                    ],
                                  ),
                                  iconColor: Color(0x00000000),
                                  iconSize: 0.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      14.0, 10.0, 14.0, 10.0),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF374151),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  iconColor: Color(0x00000000),
                                  iconSize: 0.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      14.0, 10.0, 14.0, 10.0),
                                  elevation: 0.0,
                                  borderColor: Color(0xFFE5E7EB),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                chipSpacing: 20.0,
                                rowSpacing: 8.0,
                                multiselect: false,
                                initialized: _model.choiceChipsValue != null,
                                alignment: WrapAlignment.center,
                                controller:
                                    _model.choiceChipsValueController ??=
                                        FormFieldController<List<String>>(
                                  ['Podcast'],
                                ),
                                wrapped: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.85,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 40.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        -12.0,
                                        12.0,
                                      ),
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF63CB8D),
                                      Colors.white,
                                      Color(0xFF63CB8D)
                                    ],
                                    stops: [0.0, 0.56, 1.0],
                                    begin: AlignmentDirectional(0.66, -1.0),
                                    end: AlignmentDirectional(-0.66, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.featuredEpisodeCardWebModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FeaturedEpisodeCardWebWidget(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 70.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: GridView(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 20.0,
                                            mainAxisSpacing: 1.0,
                                            childAspectRatio: 1.2,
                                          ),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            wrapWithModel(
                                              model: _model.mSMEComponentModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MSMEComponentWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model.mSMEComponentModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MSMEComponentWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model.mSMEComponentModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MSMEComponentWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model.mSMEComponentModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MSMEComponentWidget(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 60.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Shorts',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 32.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 25.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Builder(
                                              builder: (context) =>
                                                  wrapWithModel(
                                                model: _model.shortsModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ShortsWidget(
                                                  watchNow: () async {
                                                    await showDialog(
                                                      barrierColor:
                                                          Color(0x66000000),
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Container(
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.7,
                                                                child:
                                                                    WatchNowDialogWidget(
                                                                  link:
                                                                      'https://www.youtube.com/embed/2kjp9yAKpT4?si=Y7Wbu75gWQ7rzsza',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  share: () async {
                                                    await showDialog(
                                                      barrierColor:
                                                          Color(0x66000000),
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Container(
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.2,
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.5,
                                                                child:
                                                                    ShareDialogWidget(
                                                                  link:
                                                                      'https://www.youtube.com/embed/2kjp9yAKpT4?si=Y7Wbu75gWQ7rzsza',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) =>
                                                  wrapWithModel(
                                                model: _model.shortsModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ShortsWidget(
                                                  watchNow: () async {
                                                    await showDialog(
                                                      barrierColor:
                                                          Color(0x66000000),
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Container(
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.7,
                                                                child:
                                                                    WatchNowDialogWidget(
                                                                  link:
                                                                      'https://www.youtube.com/embed/2kjp9yAKpT4?si=Y7Wbu75gWQ7rzsza',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  share: () async {},
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 25.0)),
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
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 52.0,
                  decoration: BoxDecoration(
                    color: Color(0x000FFFFF),
                  ),
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 65.0,
                    child: custom_widgets.Footer(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 65.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
