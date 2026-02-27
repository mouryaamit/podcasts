import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/explore_episodes_budget_widget.dart';
import '/components/explore_episodes_zeenat_widget.dart';
import '/components/featured_episode_card_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/shorts_budget_anil_widget.dart';
import '/components/shorts_budget_krishnan_widget.dart';
import '/components/shorts_budget_laveesh_widget.dart';
import '/components/shorts_budget_unni_krishnan_widget.dart';
import '/components/shorts_srivats_widget.dart';
import '/components/shorts_suman_widget.dart';
import '/components/shorts_tirthankar_widget.dart';
import '/components/shorts_zeenat_details1_widget.dart';
import '/components/shorts_zeenat_details2_widget.dart';
import '/components/shorts_zeenat_details3_widget.dart';
import '/components/shorts_zeenat_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'podcast_model.dart';
export 'podcast_model.dart';

class PodcastWidget extends StatefulWidget {
  const PodcastWidget({
    super.key,
    String? selectedPage,
  }) : this.selectedPage = selectedPage ?? 'podcast';

  final String selectedPage;

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
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(),
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
                                          fontSize:
                                              MediaQuery.sizeOf(context).width <
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
                                  activeTab: 'podcast',
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
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
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: Color(0xFFD0D0D0),
                                        width: 0.3,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.featuredEpisodeCardModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FeaturedEpisodeCardWidget(),
                                          ),
                                        ),
                                      ],
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
                                          : 25.0,
                                      0.0,
                                    ),
                                    0.0,
                                    0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.85,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Explore Episodes',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w900,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w900,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesBudgetModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        ExploreEpisodesBudgetWidget(),
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesZeenatModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        ExploreEpisodesZeenatWidget(),
                                                  ),
                                                ),
                                            ],
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
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesBudgetModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        ExploreEpisodesBudgetWidget(),
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesZeenatModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        ExploreEpisodesZeenatWidget(),
                                                  ),
                                                ),
                                            ].divide(SizedBox(height: 20.0)),
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
                                      MediaQuery.sizeOf(context).width <
                                              valueOrDefault<double>(
                                                kBreakpointSmall,
                                                900.0,
                                              )
                                          ? 25.0
                                          : 50.0,
                                      0.0,
                                    ),
                                    0.0,
                                    50.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.85,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Episode Highlights',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.mulish(
                                                  fontWeight: FontWeight.w900,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w900,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsTirthankarModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ShortsTirthankarWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model:
                                                      _model.shortsSrivatsModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ShortsSrivatsWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model:
                                                      _model.shortsZeenatModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ShortsZeenatWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model:
                                                      _model.shortsSumanModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ShortsSumanWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsBudgetKrishnanModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ShortsBudgetKrishnanWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsBudgetLaveeshModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ShortsBudgetLaveeshWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsBudgetAnilModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ShortsBudgetAnilWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsBudgetUnniKrishnanModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ShortsBudgetUnniKrishnanWidget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsZeenatDetails1Model,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ShortsZeenatDetails1Widget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsZeenatDetails2Model,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ShortsZeenatDetails2Widget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .shortsZeenatDetails3Model,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ShortsZeenatDetails3Widget(
                                                    share: () async {},
                                                    watchNow: () async {},
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
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
                                      phone: false,
                                    ))
                                      wrapWithModel(
                                        model: _model.desktopFooterModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DesktopFooterWidget(),
                                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}
