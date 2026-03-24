import '/backend/api_requests/api_calls.dart';
import '/components/explore_episode_widget.dart';
import '/components/footer_desktop_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/youtube_player_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/podcast/choice_chips/choice_chips_widget.dart';
import '/pages/podcast_details/a_i_summary/a_i_summary_widget.dart';
import '/pages/podcast_details/conversation/conversation_widget.dart';
import '/pages/podcast_details/speaker/speaker_widget.dart';
import '/pages/podcast_details/timestamp/timestamp_widget.dart';
import '/pages/shorts_dynamic/shorts_dynamic_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'podcast_details_model.dart';
export 'podcast_details_model.dart';

class PodcastDetailsWidget extends StatefulWidget {
  const PodcastDetailsWidget({
    super.key,
    required this.slug,
  });

  final String? slug;

  static String routeName = 'PodcastDetails';
  static String routePath = '/podcast/:slug';

  @override
  State<PodcastDetailsWidget> createState() => _PodcastDetailsWidgetState();
}

class _PodcastDetailsWidgetState extends State<PodcastDetailsWidget> {
  late PodcastDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PodcastDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.episodeDetailsResponse =
          await ApiHostGroup.episodesDetailsCall.call(
        slug: widget!.slug,
      );

      if ((_model.episodeDetailsResponse?.succeeded ?? true)) {
        _model.setEpisodeDetailsMapResponse =
            await actions.setEpisodeDetailsMap(
          FFAppState().episodeDetails,
          getJsonField(
            (_model.episodeDetailsResponse?.jsonBody ?? ''),
            r'''$.items[0]''',
          ),
        );
        _model.currentEpisode = getJsonField(
          (_model.episodeDetailsResponse?.jsonBody ?? ''),
          r'''$.items[0]''',
        );
        safeSetState(() {});
        FFAppState().episodeDetails = _model.setEpisodeDetailsMapResponse!;
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (MediaQuery.sizeOf(context).width >= 1200.0)
                      Container(
                        width: double.infinity,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                          width: 1450.0,
                          height: 120.0,
                          child: custom_widgets.Header(
                            width: 1450.0,
                            height: 120.0,
                          ),
                        ),
                      ),
                    if (MediaQuery.sizeOf(context).width < 1200.0)
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            valueOrDefault<
                                                                double>(
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF062A50),
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              valueOrDefault<
                                                                  double>(
                                                                kBreakpointSmall,
                                                                900.0,
                                                              )
                                                          ? 24.0
                                                          : 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.choiceChipsModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChoiceChipsWidget(
                                          activeTab: 'podcast',
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.85,
                                            height: valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    valueOrDefault<double>(
                                                      kBreakpointSmall,
                                                      900.0,
                                                    )) {
                                                  return 345;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    valueOrDefault<double>(
                                                      kBreakpointLarge,
                                                      900.0,
                                                    )) {
                                                  return 674;
                                                } else {
                                                  return 674;
                                                }
                                              }()
                                                  .toDouble(),
                                              674.0,
                                            ),
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 40.0,
                                                  color: Color(0xFFD0D0D0),
                                                  offset: Offset(
                                                    -12.0,
                                                    12.0,
                                                  ),
                                                  spreadRadius: 0.0,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: valueOrDefault<
                                                            double>(
                                                          () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )) {
                                                              return 345;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointLarge,
                                                                  900.0,
                                                                )) {
                                                              return 674;
                                                            } else {
                                                              return 674;
                                                            }
                                                          }()
                                                              .toDouble(),
                                                          674.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .youtubePlayerModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                YoutubePlayerWidget(
                                                              title:
                                                                  getJsonField(
                                                                _model
                                                                    .currentEpisode,
                                                                r'''$.title''',
                                                              ).toString(),
                                                              youtubeLink:
                                                                  getJsonField(
                                                                _model
                                                                    .currentEpisode,
                                                                r'''$.youtubeLink''',
                                                              ).toString(),
                                                              youtubeShareLink:
                                                                  getJsonField(
                                                                _model
                                                                    .currentEpisode,
                                                                r'''$.youtubeShareLink''',
                                                              ).toString(),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Container(
                                              width: valueOrDefault<double>(
                                                () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      valueOrDefault<double>(
                                                        kBreakpointSmall,
                                                        900.0,
                                                      )) {
                                                    return 350;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      valueOrDefault<double>(
                                                        kBreakpointLarge,
                                                        900.0,
                                                      )) {
                                                    return 1200;
                                                  } else {
                                                    return 1200;
                                                  }
                                                }()
                                                    .toDouble(),
                                                1200.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      valueOrDefault<double>(
                                                        kBreakpointSmall,
                                                        900.0,
                                                      )) {
                                                    return 318;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      valueOrDefault<double>(
                                                        kBreakpointLarge,
                                                        900.0,
                                                      )) {
                                                    return 674;
                                                  } else {
                                                    return 674;
                                                  }
                                                }()
                                                    .toDouble(),
                                                674.0,
                                              ),
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 40.0,
                                                    color: Color(0xFFD0D0D0),
                                                    offset: Offset(
                                                      -12.0,
                                                      12.0,
                                                    ),
                                                    spreadRadius: 0.0,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        child: Container(
                                                          width: valueOrDefault<
                                                              double>(
                                                            () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  valueOrDefault<
                                                                      double>(
                                                                    kBreakpointSmall,
                                                                    900.0,
                                                                  )) {
                                                                return 397;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  valueOrDefault<
                                                                      double>(
                                                                    kBreakpointLarge,
                                                                    900.0,
                                                                  )) {
                                                                return 1200;
                                                              } else {
                                                                return 1200;
                                                              }
                                                            }()
                                                                .toDouble(),
                                                            1200.0,
                                                          ),
                                                          height:
                                                              valueOrDefault<
                                                                  double>(
                                                            () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  valueOrDefault<
                                                                      double>(
                                                                    kBreakpointSmall,
                                                                    900.0,
                                                                  )) {
                                                                return 318;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  valueOrDefault<
                                                                      double>(
                                                                    kBreakpointLarge,
                                                                    900.0,
                                                                  )) {
                                                                return 674;
                                                              } else {
                                                                return 674;
                                                              }
                                                            }()
                                                                .toDouble(),
                                                            674.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .youtubePlayerModel2,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  YoutubePlayerWidget(
                                                                title:
                                                                    getJsonField(
                                                                  _model
                                                                      .currentEpisode,
                                                                  r'''$.title''',
                                                                ).toString(),
                                                                youtubeLink:
                                                                    getJsonField(
                                                                  _model
                                                                      .currentEpisode,
                                                                  r'''$.youtubeLink''',
                                                                ).toString(),
                                                                youtubeShareLink:
                                                                    getJsonField(
                                                                  _model
                                                                      .currentEpisode,
                                                                  r'''$.youtubeShareLink''',
                                                                ).toString(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.75,
                                              decoration: BoxDecoration(),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: functions
                                                          .formatDescription(
                                                              (getJsonField(
                                                        _model.currentEpisode,
                                                        r'''$.description''',
                                                        true,
                                                      ) as List?)
                                                                  ?.map<String>(
                                                                      (e) => e
                                                                          .toString())
                                                                  .toList()
                                                                  .cast<
                                                                      String>()),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )
                                                            ? 12.0
                                                            : 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85,
                                              decoration: BoxDecoration(),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: functions
                                                          .formatDescription(
                                                              (getJsonField(
                                                        _model.currentEpisode,
                                                        r'''$.description''',
                                                        true,
                                                      ) as List?)
                                                                  ?.map<String>(
                                                                      (e) => e
                                                                          .toString())
                                                                  .toList()
                                                                  .cast<
                                                                      String>()),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )
                                                            ? 12.0
                                                            : 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width >
                                                      valueOrDefault<double>(
                                                        kBreakpointSmall,
                                                        900.0,
                                                      )
                                                  ? 50.0
                                                  : 20.0,
                                              0.0,
                                            ),
                                            0.0,
                                            0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color:
                                                              Color(0x00FFFFFF),
                                                          elevation: 0.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                desktop: false,
                                                              ))
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.85,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          scrollDirection:
                                                                              Axis.horizontal,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 1;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Highlights',
                                                                                icon: Icon(
                                                                                  Icons.videocam_outlined,
                                                                                  size: 22.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 148.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 2;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Timestamp',
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.clock,
                                                                                  size: 16.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 148.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 3;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'AI Summary',
                                                                                icon: Icon(
                                                                                  Icons.celebration_rounded,
                                                                                  size: 22.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 148.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 4;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Conversation',
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.pen,
                                                                                  size: 16.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 148.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(width: 20.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                          elevation:
                                                                              0.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Stack(
                                                                                  children: [
                                                                                    Builder(
                                                                                      builder: (context) {
                                                                                        if (widget!.slug != null && widget!.slug != '') {
                                                                                          return Container(
                                                                                            width: 945.74,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                          0.0,
                                                                                                          valueOrDefault<double>(
                                                                                                            () {
                                                                                                              if (MediaQuery.sizeOf(context).width <
                                                                                                                  valueOrDefault<double>(
                                                                                                                    kBreakpointSmall,
                                                                                                                    900.0,
                                                                                                                  )) {
                                                                                                                return 40.0;
                                                                                                              } else if (MediaQuery.sizeOf(context).width >
                                                                                                                  valueOrDefault<double>(
                                                                                                                    kBreakpointLarge,
                                                                                                                    900.0,
                                                                                                                  )) {
                                                                                                                return 0.0;
                                                                                                              } else {
                                                                                                                return 0.0;
                                                                                                              }
                                                                                                            }(),
                                                                                                            0.0,
                                                                                                          ),
                                                                                                          0.0,
                                                                                                          valueOrDefault<double>(
                                                                                                            () {
                                                                                                              if (MediaQuery.sizeOf(context).width <
                                                                                                                  valueOrDefault<double>(
                                                                                                                    kBreakpointSmall,
                                                                                                                    900.0,
                                                                                                                  )) {
                                                                                                                return 12.0;
                                                                                                              } else if (MediaQuery.sizeOf(context).width >
                                                                                                                  valueOrDefault<double>(
                                                                                                                    kBreakpointLarge,
                                                                                                                    900.0,
                                                                                                                  )) {
                                                                                                                return 0.0;
                                                                                                              } else {
                                                                                                                return 0.0;
                                                                                                              }
                                                                                                            }(),
                                                                                                            0.0,
                                                                                                          )),
                                                                                                      child: Text(
                                                                                                        'Highlights',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.mulish(
                                                                                                                fontWeight: FontWeight.w900,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: Color(0xFF404040),
                                                                                                              fontSize: 24.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Builder(
                                                                                                  builder: (context) {
                                                                                                    final highlightsMobile = getJsonField(
                                                                                                      _model.currentEpisode,
                                                                                                      r'''$.highlights''',
                                                                                                    ).toList();

                                                                                                    return SingleChildScrollView(
                                                                                                      scrollDirection: Axis.horizontal,
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: List.generate(highlightsMobile.length, (highlightsMobileIndex) {
                                                                                                          final highlightsMobileItem = highlightsMobile[highlightsMobileIndex];
                                                                                                          return Container(
                                                                                                            height: 200.0,
                                                                                                            child: wrapWithModel(
                                                                                                              model: _model.shortsDynamicModels1.getModel(
                                                                                                                'highlights_${highlightsMobileIndex.toString()}',
                                                                                                                highlightsMobileIndex,
                                                                                                              ),
                                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                                              child: ShortsDynamicWidget(
                                                                                                                key: Key(
                                                                                                                  'Keymam_${'highlights_${highlightsMobileIndex.toString()}'}',
                                                                                                                ),
                                                                                                                highlightsData: highlightsMobileItem,
                                                                                                                share: () async {},
                                                                                                                watchNow: () async {},
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        }).divide(SizedBox(width: 15.0)),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        } else {
                                                                                          return Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                        0.0,
                                                                                                        valueOrDefault<double>(
                                                                                                          () {
                                                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                                                valueOrDefault<double>(
                                                                                                                  kBreakpointSmall,
                                                                                                                  900.0,
                                                                                                                )) {
                                                                                                              return 40.0;
                                                                                                            } else if (MediaQuery.sizeOf(context).width >
                                                                                                                valueOrDefault<double>(
                                                                                                                  kBreakpointLarge,
                                                                                                                  900.0,
                                                                                                                )) {
                                                                                                              return 0.0;
                                                                                                            } else {
                                                                                                              return 0.0;
                                                                                                            }
                                                                                                          }(),
                                                                                                          0.0,
                                                                                                        ),
                                                                                                        0.0,
                                                                                                        valueOrDefault<double>(
                                                                                                          () {
                                                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                                                valueOrDefault<double>(
                                                                                                                  kBreakpointSmall,
                                                                                                                  900.0,
                                                                                                                )) {
                                                                                                              return 12.0;
                                                                                                            } else if (MediaQuery.sizeOf(context).width >
                                                                                                                valueOrDefault<double>(
                                                                                                                  kBreakpointLarge,
                                                                                                                  900.0,
                                                                                                                )) {
                                                                                                              return 0.0;
                                                                                                            } else {
                                                                                                              return 0.0;
                                                                                                            }
                                                                                                          }(),
                                                                                                          0.0,
                                                                                                        )),
                                                                                                    child: Text(
                                                                                                      'Conversation',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.mulish(
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            color: Color(0xFF404040),
                                                                                                            fontSize: 24.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w900,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              wrapWithModel(
                                                                                                model: _model.conversationModel1,
                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                child: ConversationWidget(
                                                                                                  conversationList: getJsonField(
                                                                                                    _model.currentEpisode,
                                                                                                    r'''$.conversations''',
                                                                                                    true,
                                                                                                  )!,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        }
                                                                                      },
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                              ))
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.75,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              80.0,
                                                                              50.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 1;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Highlights',
                                                                                icon: Icon(
                                                                                  Icons.videocam_outlined,
                                                                                  size: 22.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 132.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 2;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Timestamp',
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.clock,
                                                                                  size: 16.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 140.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 3;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'AI Summary',
                                                                                icon: Icon(
                                                                                  Icons.celebration_rounded,
                                                                                  size: 22.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 146.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.selectedTab = 4;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Conversation',
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.pen,
                                                                                  size: 16.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 156.0,
                                                                                  height: 44.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFFDEDEDE),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(height: 25.0)),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Card(
                                                                            clipBehavior:
                                                                                Clip.antiAliasWithSaveLayer,
                                                                            color:
                                                                                Color(0x00FFFFFF),
                                                                            elevation:
                                                                                0.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Stack(
                                                                                    children: [
                                                                                      Builder(
                                                                                        builder: (context) {
                                                                                          if (_model.selectedTab == 1) {
                                                                                            return Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Highlights',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.mulish(
                                                                                                                fontWeight: FontWeight.w900,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: Color(0xFF404040),
                                                                                                              fontSize: 32.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Builder(
                                                                                                        builder: (context) => FFButtonWidget(
                                                                                                          onPressed: () async {
                                                                                                            await Share.share(
                                                                                                              getJsonField(
                                                                                                                _model.currentEpisode,
                                                                                                                r'''$.youtubeShareLink''',
                                                                                                              ).toString(),
                                                                                                              sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                            );
                                                                                                          },
                                                                                                          text: 'Share',
                                                                                                          icon: Icon(
                                                                                                            Icons.ios_share_outlined,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                          options: FFButtonOptions(
                                                                                                            height: 40.0,
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                            color: Color(0x00FFFFFF),
                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                  font: GoogleFonts.interTight(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                  ),
                                                                                                                  color: Color(0xFF4A4A4A),
                                                                                                                  fontSize: 15.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                ),
                                                                                                            elevation: 0.0,
                                                                                                            borderSide: BorderSide(
                                                                                                              color: Color(0xFFDEDEDE),
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Expanded(
                                                                                                        child: Builder(
                                                                                                          builder: (context) {
                                                                                                            final highlightsGrid = getJsonField(
                                                                                                              _model.currentEpisode,
                                                                                                              r'''$.highlights''',
                                                                                                            ).toList();

                                                                                                            return GridView.builder(
                                                                                                              padding: EdgeInsets.zero,
                                                                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                                                crossAxisCount: 2,
                                                                                                                crossAxisSpacing: 10.0,
                                                                                                                mainAxisSpacing: 10.0,
                                                                                                                childAspectRatio: 0.8,
                                                                                                              ),
                                                                                                              primary: false,
                                                                                                              shrinkWrap: true,
                                                                                                              scrollDirection: Axis.vertical,
                                                                                                              itemCount: highlightsGrid.length,
                                                                                                              itemBuilder: (context, highlightsGridIndex) {
                                                                                                                final highlightsGridItem = highlightsGrid[highlightsGridIndex];
                                                                                                                return Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                  child: wrapWithModel(
                                                                                                                    model: _model.shortsDynamicModels2.getModel(
                                                                                                                      'highlights_${highlightsGridIndex.toString()}',
                                                                                                                      highlightsGridIndex,
                                                                                                                    ),
                                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                                    updateOnChange: true,
                                                                                                                    child: ShortsDynamicWidget(
                                                                                                                      key: Key(
                                                                                                                        'Keyyym_${'highlights_${highlightsGridIndex.toString()}'}',
                                                                                                                      ),
                                                                                                                      highlightsData: highlightsGridItem,
                                                                                                                      share: () async {},
                                                                                                                      watchNow: () async {},
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            );
                                                                                                          },
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          } else if (_model.selectedTab == 2) {
                                                                                            return Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Timestamp',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.mulish(
                                                                                                                fontWeight: FontWeight.w900,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: Color(0xFF404040),
                                                                                                              fontSize: 32.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Builder(
                                                                                                        builder: (context) => FFButtonWidget(
                                                                                                          onPressed: () async {
                                                                                                            await Share.share(
                                                                                                              getJsonField(
                                                                                                                _model.currentEpisode,
                                                                                                                r'''$.youtubeShareLink''',
                                                                                                              ).toString(),
                                                                                                              sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                            );
                                                                                                          },
                                                                                                          text: 'Share',
                                                                                                          icon: Icon(
                                                                                                            Icons.ios_share,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                          options: FFButtonOptions(
                                                                                                            height: 40.0,
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                            color: Color(0x00FFFFFF),
                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                  font: GoogleFonts.interTight(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                  ),
                                                                                                                  color: Color(0xFF4A4A4A),
                                                                                                                  fontSize: 15.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                ),
                                                                                                            elevation: 0.0,
                                                                                                            borderSide: BorderSide(
                                                                                                              color: Color(0xFFDEDEDE),
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.timestampModel,
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: TimestampWidget(
                                                                                                        timestampsList: getJsonField(
                                                                                                          _model.currentEpisode,
                                                                                                          r'''$.timestamps''',
                                                                                                          true,
                                                                                                        )!,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          } else if (_model.selectedTab == 3) {
                                                                                            return Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'AI Summary',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.mulish(
                                                                                                                fontWeight: FontWeight.w900,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: Color(0xFF404040),
                                                                                                              fontSize: 32.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Builder(
                                                                                                        builder: (context) => FFButtonWidget(
                                                                                                          onPressed: () async {
                                                                                                            await Share.share(
                                                                                                              getJsonField(
                                                                                                                _model.currentEpisode,
                                                                                                                r'''$.youtubeShareLink''',
                                                                                                              ).toString(),
                                                                                                              sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                            );
                                                                                                          },
                                                                                                          text: 'Share',
                                                                                                          icon: Icon(
                                                                                                            Icons.ios_share,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                          options: FFButtonOptions(
                                                                                                            height: 40.0,
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                            color: Color(0x00FFFFFF),
                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                  font: GoogleFonts.interTight(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                  ),
                                                                                                                  color: Color(0xFF4A4A4A),
                                                                                                                  fontSize: 15.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                ),
                                                                                                            elevation: 0.0,
                                                                                                            borderSide: BorderSide(
                                                                                                              color: Color(0xFFDEDEDE),
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  wrapWithModel(
                                                                                                    model: _model.aISummaryModel,
                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                    child: AISummaryWidget(
                                                                                                      aiSummaries: getJsonField(
                                                                                                        FFAppState().episodeDetails,
                                                                                                        r'''$.aiSummaries''',
                                                                                                        true,
                                                                                                      )!,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            return Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Conversation',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.mulish(
                                                                                                                fontWeight: FontWeight.w900,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: Color(0xFF404040),
                                                                                                              fontSize: 32.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Builder(
                                                                                                        builder: (context) => FFButtonWidget(
                                                                                                          onPressed: () async {
                                                                                                            await Share.share(
                                                                                                              getJsonField(
                                                                                                                _model.currentEpisode,
                                                                                                                r'''$.youtubeShareLink''',
                                                                                                              ).toString(),
                                                                                                              sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                            );
                                                                                                          },
                                                                                                          text: 'Button',
                                                                                                          options: FFButtonOptions(
                                                                                                            height: 40.0,
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                  font: GoogleFonts.interTight(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                  ),
                                                                                                                  color: Colors.white,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                ),
                                                                                                            elevation: 0.0,
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.conversationModel2,
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: ConversationWidget(
                                                                                                        conversationList: getJsonField(
                                                                                                          _model.currentEpisode,
                                                                                                          r'''$.conversations''',
                                                                                                          true,
                                                                                                        )!,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                        },
                                                                                      ),
                                                                                    ],
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width >
                                                      valueOrDefault<double>(
                                                        kBreakpointSmall,
                                                        900.0,
                                                      )
                                                  ? 50.0
                                                  : 0.0,
                                              0.0,
                                            ),
                                            0.0,
                                            0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )) {
                                                              return 40.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointLarge,
                                                                  900.0,
                                                                )) {
                                                              return 0.0;
                                                            } else {
                                                              return 0.0;
                                                            }
                                                          }(),
                                                          0.0,
                                                        ),
                                                        0.0,
                                                        0.0),
                                                child: Text(
                                                  'Guest Experts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.mulish(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF111827),
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )
                                                            ? 32.0
                                                            : 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final guestExperts =
                                                      getJsonField(
                                                    _model.currentEpisode,
                                                    r'''$.guestExperts''',
                                                  ).toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        guestExperts.length,
                                                        (guestExpertsIndex) {
                                                      final guestExpertsItem =
                                                          guestExperts[
                                                              guestExpertsIndex];
                                                      return wrapWithModel(
                                                        model: _model
                                                            .speakerModels1
                                                            .getModel(
                                                          'guestExpert_${guestExpertsIndex.toString()}',
                                                          guestExpertsIndex,
                                                        ),
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: SpeakerWidget(
                                                          key: Key(
                                                            'Keyymv_${'guestExpert_${guestExpertsIndex.toString()}'}',
                                                          ),
                                                          image:
                                                              '/assets/images/${getJsonField(
                                                            guestExpertsItem,
                                                            r'''$.profileImage''',
                                                          ).toString()}',
                                                          name: getJsonField(
                                                            guestExpertsItem,
                                                            r'''$.name''',
                                                          ).toString(),
                                                          description:
                                                              getJsonField(
                                                            guestExpertsItem,
                                                            r'''$.description''',
                                                          ).toString(),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width >
                                                      900.0
                                                  ? 100.0
                                                  : 20.0,
                                              0.0,
                                            ),
                                            0.0,
                                            0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )) {
                                                              return 40.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointLarge,
                                                                  900.0,
                                                                )) {
                                                              return 0.0;
                                                            } else {
                                                              return 0.0;
                                                            }
                                                          }(),
                                                          0.0,
                                                        ),
                                                        0.0,
                                                        0.0),
                                                child: Text(
                                                  'Index Experts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.mulish(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF111827),
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  900.0,
                                                                )
                                                            ? 32.0
                                                            : 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final indexExperts =
                                                      getJsonField(
                                                    _model.currentEpisode,
                                                    r'''$.indexExperts''',
                                                  ).toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        indexExperts.length,
                                                        (indexExpertsIndex) {
                                                      final indexExpertsItem =
                                                          indexExperts[
                                                              indexExpertsIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .speakerModels2
                                                              .getModel(
                                                            'indexExperts_${indexExpertsIndex.toString()}',
                                                            indexExpertsIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: SpeakerWidget(
                                                            key: Key(
                                                              'Key4o0_${'indexExperts_${indexExpertsIndex.toString()}'}',
                                                            ),
                                                            image:
                                                                '/assets/images/${getJsonField(
                                                              indexExpertsItem,
                                                              r'''$.profileImage''',
                                                            ).toString()}',
                                                            name: getJsonField(
                                                              indexExpertsItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            description:
                                                                getJsonField(
                                                              indexExpertsItem,
                                                              r'''$.description''',
                                                            ).toString(),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width >
                                                      900.0
                                                  ? 50.0
                                                  : 0.0,
                                              0.0,
                                            ),
                                            0.0,
                                            50.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        valueOrDefault<
                                                                            double>(
                                                                          kBreakpointSmall,
                                                                          900.0,
                                                                        )) {
                                                                      return 40.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        valueOrDefault<
                                                                            double>(
                                                                          kBreakpointLarge,
                                                                          900.0,
                                                                        )) {
                                                                      return 0.0;
                                                                    } else {
                                                                      return 0.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        valueOrDefault<
                                                                            double>(
                                                                          kBreakpointSmall,
                                                                          900.0,
                                                                        )) {
                                                                      return 12.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        valueOrDefault<
                                                                            double>(
                                                                          kBreakpointLarge,
                                                                          900.0,
                                                                        )) {
                                                                      return 0.0;
                                                                    } else {
                                                                      return 0.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                    child: Text(
                                                      'Explore Podcast',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF111827),
                                                                fontSize: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        valueOrDefault<
                                                                            double>(
                                                                          kBreakpointSmall,
                                                                          900.0,
                                                                        )
                                                                    ? 24.0
                                                                    : 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Builder(
                                                        builder: (context) {
                                                          final explorePodcasts =
                                                              FFAppState()
                                                                  .exploreEpisodesResponse
                                                                  .where((e) =>
                                                                      widget!
                                                                          .slug !=
                                                                      getJsonField(
                                                                        e,
                                                                        r'''$.slug''',
                                                                      ).toString())
                                                                  .toList();

                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                explorePodcasts
                                                                    .length,
                                                                (explorePodcastsIndex) {
                                                              final explorePodcastsItem =
                                                                  explorePodcasts[
                                                                      explorePodcastsIndex];
                                                              return Container(
                                                                height: 200.0,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  minHeight:
                                                                      200.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .exploreEpisodeModels
                                                                      .getModel(
                                                                    'exploreEpisode_${explorePodcastsIndex.toString()}',
                                                                    explorePodcastsIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      ExploreEpisodeWidget(
                                                                    key: Key(
                                                                      'Keywvh_${'exploreEpisode_${explorePodcastsIndex.toString()}'}',
                                                                    ),
                                                                    episodesData:
                                                                        getJsonField(
                                                                      explorePodcastsItem,
                                                                      r'''$''',
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              wrapWithModel(
                                                model: _model.footerMobileModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FooterMobileWidget(),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              wrapWithModel(
                                                model:
                                                    _model.footerDesktopModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FooterDesktopWidget(),
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
            ],
          ),
        ),
      ),
    );
  }
}
