import '/ai_summary/zeenat_a_i_summary/zeenat_a_i_summary_widget.dart';
import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/speaker_widget.dart';
import '/conversation/conversation_zeenat/conversation_zeenat_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/players/youtube_player_zeenat/youtube_player_zeenat_widget.dart';
import '/shorts/shorts_zeenat/shorts_zeenat_widget.dart';
import '/shorts/shorts_zeenat_details1/shorts_zeenat_details1_widget.dart';
import '/shorts/shorts_zeenat_details2/shorts_zeenat_details2_widget.dart';
import '/shorts/shorts_zeenat_details3/shorts_zeenat_details3_widget.dart';
import '/timestamp/zeenat_timestamp/zeenat_timestamp_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'podcast_details_zeenat_model.dart';
export 'podcast_details_zeenat_model.dart';

class PodcastDetailsZeenatWidget extends StatefulWidget {
  const PodcastDetailsZeenatWidget({super.key});

  static String routeName = 'PodcastDetailsZeenat';
  static String routePath =
      '/podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';

  @override
  State<PodcastDetailsZeenatWidget> createState() =>
      _PodcastDetailsZeenatWidgetState();
}

class _PodcastDetailsZeenatWidgetState
    extends State<PodcastDetailsZeenatWidget> {
  late PodcastDetailsZeenatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PodcastDetailsZeenatModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setDarkModeSetting(context, ThemeMode.light);
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
                    if (MediaQuery.sizeOf(context).width > 1025.0)
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
                    if (MediaQuery.sizeOf(context).width < 1025.0)
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  return 355;
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
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
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
                                                                return 355;
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
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .youtubePlayerZeenatModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                YoutubePlayerZeenatWidget(),
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
                                                    return 355;
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
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                          child: Container(
                                                            width:
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
                                                                  return 397;
                                                                } else if (MediaQuery.sizeOf(
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
                                                                  return 355;
                                                                } else if (MediaQuery.sizeOf(
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
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .youtubePlayerZeenatModel2,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  YoutubePlayerZeenatWidget(),
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
                                                      text:
                                                          'India\'s MSME sector is resilient but that doesn\'t mean lenders should deploy capital indiscriminately. In this crucial conversation, Zeenat Hamirani, Chief Risk Officer at L&T Finance, breaks down what sustainable MSME growth requires: good data, disciplined decision-making, and moving beyond fragmented credit signals.',
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
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
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
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
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
                                                      text:
                                                          'India\'s MSME sector is resilient but that doesn\'t mean lenders should deploy capital indiscriminately. In this crucial conversation, Zeenat Hamirani, Chief Risk Officer at L&T Finance, breaks down what sustainable MSME growth requires: good data, disciplined decision-making, and moving beyond fragmented credit signals.',
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
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
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
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
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
                                                      900.0
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
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
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
                                                                                  _model.selectedIndex = 1;
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
                                                                                  color: _model.selectedIndex == 1 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                  _model.selectedIndex = 2;
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
                                                                                  color: _model.selectedIndex == 2 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 2 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                  _model.selectedIndex = 3;
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
                                                                                  color: _model.selectedIndex == 3 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 3 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                  _model.selectedIndex = 4;
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
                                                                                  color: _model.selectedIndex == 4 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 4 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                        if (_model.selectedIndex == 1) {
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
                                                                                                SingleChildScrollView(
                                                                                                  scrollDirection: Axis.horizontal,
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.shortsZeenatModel1,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: ShortsZeenatWidget(
                                                                                                            share: () async {},
                                                                                                            watchNow: () async {},
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Container(
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.shortsZeenatDetails1Model1,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: ShortsZeenatDetails1Widget(
                                                                                                            share: () async {},
                                                                                                            watchNow: () async {},
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Container(
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.shortsZeenatDetails2Model1,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: ShortsZeenatDetails2Widget(
                                                                                                            share: () async {},
                                                                                                            watchNow: () async {},
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Container(
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.shortsZeenatDetails3Model1,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: ShortsZeenatDetails3Widget(
                                                                                                            share: () async {},
                                                                                                            watchNow: () async {},
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ].divide(SizedBox(width: 15.0)),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        } else if (_model.selectedIndex == 2) {
                                                                                          return Container(
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                                                      0.0),
                                                                                                  child: Text(
                                                                                                    'Timestamp',
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
                                                                                                wrapWithModel(
                                                                                                  model: _model.zeenatTimestampModel1,
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: ZeenatTimestampWidget(),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        } else if (_model.selectedIndex == 3) {
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
                                                                                                        0.0),
                                                                                                    child: Text(
                                                                                                      'AI Summary',
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
                                                                                                model: _model.zeenatAISummaryModel1,
                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                child: ZeenatAISummaryWidget(),
                                                                                              ),
                                                                                            ],
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
                                                                                                        0.0),
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
                                                                                                model: _model.conversationZeenatModel1,
                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                child: ConversationZeenatWidget(),
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
                                                                                  _model.selectedIndex = 1;
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
                                                                                  color: _model.selectedIndex == 1 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 1 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                  _model.selectedIndex = 2;
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
                                                                                  color: _model.selectedIndex == 2 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 2 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                  _model.selectedIndex = 3;
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
                                                                                  color: _model.selectedIndex == 3 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 3 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                  _model.selectedIndex = 4;
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
                                                                                  color: _model.selectedIndex == 4 ? Color(0xFF30AC6B) : Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: _model.selectedIndex == 4 ? FlutterFlowTheme.of(context).primaryBackground : Color(0xFF4A4A4A),
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
                                                                                          if (_model.selectedIndex == 1) {
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
                                                                                                              'https://youtu.be/hhbeWmcBhHo?si=c-wAocSnHz9KPxdu',
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
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          child: wrapWithModel(
                                                                                                            model: _model.shortsZeenatModel2,
                                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                                            child: ShortsZeenatWidget(
                                                                                                              share: () async {},
                                                                                                              watchNow: () async {},
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          child: wrapWithModel(
                                                                                                            model: _model.shortsZeenatDetails1Model2,
                                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                                            child: ShortsZeenatDetails1Widget(
                                                                                                              share: () async {},
                                                                                                              watchNow: () async {},
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            child: wrapWithModel(
                                                                                                              model: _model.shortsZeenatDetails2Model2,
                                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                                              child: ShortsZeenatDetails2Widget(
                                                                                                                share: () async {},
                                                                                                                watchNow: () async {},
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Container(
                                                                                                            child: wrapWithModel(
                                                                                                              model: _model.shortsZeenatDetails3Model2,
                                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                                              child: ShortsZeenatDetails3Widget(
                                                                                                                share: () async {},
                                                                                                                watchNow: () async {},
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          } else if (_model.selectedIndex == 2) {
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.min,
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
                                                                                                            'https://youtu.be/hhbeWmcBhHo?si=c-wAocSnHz9KPxdu',
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
                                                                                                          color: Color(0x000FFFFF),
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
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                  child: wrapWithModel(
                                                                                                    model: _model.zeenatTimestampModel2,
                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                    child: ZeenatTimestampWidget(),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          } else if (_model.selectedIndex == 3) {
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                                            'https://youtu.be/hhbeWmcBhHo?si=c-wAocSnHz9KPxdu',
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
                                                                                                wrapWithModel(
                                                                                                  model: _model.zeenatAISummaryModel2,
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: ZeenatAISummaryWidget(),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          } else {
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                                            'https://youtu.be/hhbeWmcBhHo?si=c-wAocSnHz9KPxdu',
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
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                  child: wrapWithModel(
                                                                                                    model: _model.conversationZeenatModel2,
                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                    child: ConversationZeenatWidget(),
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
                                                      900.0
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
                                                  'Guest Expert',
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.speakerModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SpeakerWidget(
                                                    image:
                                                        'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/fkUY25tEnYI3GDwVGhie/assets/vrlw0irralpy/Zeenat.png',
                                                    name: 'Ms. Zeenat Hamirani',
                                                    description:
                                                        'Chief Risk Officer, L&T Finance. Leads enterprise-wide risk and credit oversight, embedding disciplined growth and resilience in India’s NBFC ecosystem.',
                                                  ),
                                                ),
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.speakerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SpeakerWidget(
                                                    image:
                                                        'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/fkUY25tEnYI3GDwVGhie/assets/wk9au2cepy0b/Sumita.png',
                                                    name: 'Dr. Sumita Kale',
                                                    description:
                                                        'Principal Economist, Jocata; CEO & Senior Fellow, Indicus Foundation. Distinguished macroeconomist shaping financial inclusion discourse, and has been instrumental in shaping the Sumpoorn Index.',
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.speakerModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SpeakerWidget(
                                                    image:
                                                        'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/fkUY25tEnYI3GDwVGhie/assets/5f42qtescxjb/Narsi.png',
                                                    name: 'Mr. Narasimhan V.',
                                                    description:
                                                        'Principal Advisor & Chief Architect, Sumpoorn. Former Group COO, Dun & Bradstreet (South Asia, Middle East, Africa). As the architect of Sumpoorn, he brings deep expertise in credit analytics and economic intelligence to its methodology.',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 50.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.85,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
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
                                                                        return 40.0;
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
                                                                  font: GoogleFonts
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
                                                                              .width >
                                                                          valueOrDefault<
                                                                              double>(
                                                                            kBreakpointSmall,
                                                                            900.0,
                                                                          )
                                                                      ? 32.0
                                                                      : 24.0,
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
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            PodcastWidget
                                                                .routeName);
                                                      },
                                                      text: 'Go To Home',
                                                      options: FFButtonOptions(
                                                        width: valueOrDefault<
                                                            double>(
                                                          () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  600.0,
                                                                )) {
                                                              return 78;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointLarge,
                                                                  900.0,
                                                                )) {
                                                              return 101;
                                                            } else {
                                                              return 101;
                                                            }
                                                          }()
                                                              .toDouble(),
                                                          101.0,
                                                        ),
                                                        height: valueOrDefault<
                                                            double>(
                                                          () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointSmall,
                                                                  600.0,
                                                                )) {
                                                              return 31;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                valueOrDefault<
                                                                    double>(
                                                                  kBreakpointLarge,
                                                                  900.0,
                                                                )) {
                                                              return 40;
                                                            } else {
                                                              return 44;
                                                            }
                                                          }()
                                                              .toDouble(),
                                                          44.0,
                                                        ),
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0x00FFFFFF),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF30AC6B),
                                                                  fontSize:
                                                                      valueOrDefault<
                                                                          double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          valueOrDefault<
                                                                              double>(
                                                                            kBreakpointSmall,
                                                                            600.0,
                                                                          )) {
                                                                        return 12;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >
                                                                          valueOrDefault<
                                                                              double>(
                                                                            kBreakpointLarge,
                                                                            900.0,
                                                                          )) {
                                                                        return 15;
                                                                      } else {
                                                                        return 15;
                                                                      }
                                                                    }()
                                                                        .toDouble(),
                                                                    15.0,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF1DB954),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
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
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesBudgetWithContainerModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesBudgetWithContainerWidget(),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesTirthankarWithContainerModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesTirthankarWithContainerWidget(),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesSrivatsramWithContainerModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesSrivatsramWithContainerWidget(),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesRahulWithContainerModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesRahulWithContainerWidget(),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesSumanWithContainerModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesSumanWithContainerWidget(),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.4,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .exploreEpisodesBudgetWithContainerModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ExploreEpisodesBudgetWithContainerWidget(),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.4,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .exploreEpisodesTirthankarWithContainerModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ExploreEpisodesTirthankarWithContainerWidget(),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.4,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .exploreEpisodesSrivatsramWithContainerModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ExploreEpisodesSrivatsramWithContainerWidget(),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.4,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .exploreEpisodesRahulWithContainerModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ExploreEpisodesRahulWithContainerWidget(),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.4,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .exploreEpisodesSumanWithContainerModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                ExploreEpisodesSumanWithContainerWidget(),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesBudgetWithContainerModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesBudgetWithContainerWidget(),
                                                        ),
                                                      ),
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesTirthankarWithContainerModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesTirthankarWithContainerWidget(),
                                                        ),
                                                      ),
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesSrivatsramWithContainerModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesSrivatsramWithContainerWidget(),
                                                        ),
                                                      ),
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesRahulWithContainerModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesRahulWithContainerWidget(),
                                                        ),
                                                      ),
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .exploreEpisodesSumanWithContainerModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ExploreEpisodesSumanWithContainerWidget(),
                                                        ),
                                                      ),
                                                  ].divide(
                                                      SizedBox(height: 15.0)),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
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
                                                model:
                                                    _model.desktopFooterModel,
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
            ],
          ),
        ),
      ),
    );
  }
}
