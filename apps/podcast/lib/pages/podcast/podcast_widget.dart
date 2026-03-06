import '/components/choice_chips_widget.dart';
import '/components/desktop_footer_widget.dart';
import '/components/featured_episode_card_widget.dart';
import '/components/header_mobile_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/episodes/explore_episodes_budget_with_container/explore_episodes_budget_with_container_widget.dart';
import '/episodes/explore_episodes_rahul_with_container/explore_episodes_rahul_with_container_widget.dart';
import '/episodes/explore_episodes_srivatsram_with_container/explore_episodes_srivatsram_with_container_widget.dart';
import '/episodes/explore_episodes_suman_with_container/explore_episodes_suman_with_container_widget.dart';
import '/episodes/explore_episodes_tirthankar_with_container/explore_episodes_tirthankar_with_container_widget.dart';
import '/episodes/explore_episodes_zeenat_with_container/explore_episodes_zeenat_with_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shorts/shorts_budget_anil/shorts_budget_anil_widget.dart';
import '/shorts/shorts_budget_krishnan/shorts_budget_krishnan_widget.dart';
import '/shorts/shorts_budget_laveesh/shorts_budget_laveesh_widget.dart';
import '/shorts/shorts_budget_unni_krishnan/shorts_budget_unni_krishnan_widget.dart';
import '/shorts/shorts_rahul_details1/shorts_rahul_details1_widget.dart';
import '/shorts/shorts_rahul_details2/shorts_rahul_details2_widget.dart';
import '/shorts/shorts_rahul_details3/shorts_rahul_details3_widget.dart';
import '/shorts/shorts_srivats/shorts_srivats_widget.dart';
import '/shorts/shorts_srivats_details1/shorts_srivats_details1_widget.dart';
import '/shorts/shorts_srivats_details2/shorts_srivats_details2_widget.dart';
import '/shorts/shorts_suman/shorts_suman_widget.dart';
import '/shorts/shorts_suman_details1/shorts_suman_details1_widget.dart';
import '/shorts/shorts_suman_details2/shorts_suman_details2_widget.dart';
import '/shorts/shorts_tirthankar/shorts_tirthankar_widget.dart';
import '/shorts/shorts_tirthankar_details1/shorts_tirthankar_details1_widget.dart';
import '/shorts/shorts_tirthankar_details2/shorts_tirthankar_details2_widget.dart';
import '/shorts/shorts_zeenat/shorts_zeenat_widget.dart';
import '/shorts/shorts_zeenat_details1/shorts_zeenat_details1_widget.dart';
import '/shorts/shorts_zeenat_details2/shorts_zeenat_details2_widget.dart';
import '/shorts/shorts_zeenat_details3/shorts_zeenat_details3_widget.dart';
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
  static String routePath = '/podcasts';

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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    valueOrDefault<double>(
                                                      kBreakpointSmall,
                                                      900.0,
                                                    )) {
                                                  return 40.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
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
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    valueOrDefault<double>(
                                                      kBreakpointSmall,
                                                      900.0,
                                                    )) {
                                                  return 12.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
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
                                          'Explore Episodes',
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
                                                color: Color(0xFF404040),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesBudgetWithContainerModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
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
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesTirthankarWithContainerModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesSrivatsramWithContainerModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
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
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesRahulWithContainerModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesZeenatWithContainerModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        ExploreEpisodesZeenatWithContainerWidget(),
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .exploreEpisodesSumanWithContainerModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        ExploreEpisodesSumanWithContainerWidget(),
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
                                        Column(
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
                                                      .exploreEpisodesBudgetWithContainerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
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
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .exploreEpisodesTirthankarWithContainerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
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
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .exploreEpisodesSrivatsramWithContainerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
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
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .exploreEpisodesRahulWithContainerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
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
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .exploreEpisodesZeenatWithContainerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ExploreEpisodesZeenatWithContainerWidget(),
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
                                                      .exploreEpisodesSumanWithContainerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      ExploreEpisodesSumanWithContainerWidget(),
                                                ),
                                              ),
                                          ].divide(SizedBox(height: 20.0)),
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
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                        return 12.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          valueOrDefault<
                                                              double>(
                                                            kBreakpointLarge,
                                                            900.0,
                                                          )) {
                                                        return 12.0;
                                                      } else {
                                                        return 12.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
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
                                                  color: Color(0xFF404040),
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
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
                                                model: _model
                                                    .shortsTirthankarDetails1Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsTirthankarDetails1Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsTirthankarDetails2Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsTirthankarDetails2Widget(
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
                                                model: _model
                                                    .shortsSrivatsDetails1Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsSrivatsDetails1Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsSrivatsDetails2Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsSrivatsDetails2Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsRahulDetails1Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsRahulDetails1Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsRahulDetails2Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsRahulDetails2Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsRahulDetails3Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsRahulDetails3Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model.shortsZeenatModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ShortsZeenatWidget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
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
                                              decoration: BoxDecoration(),
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
                                              decoration: BoxDecoration(),
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
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model.shortsSumanModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ShortsSumanWidget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsSumanDetails1Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsSumanDetails1Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model
                                                    .shortsSumanDetails2Model,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ShortsSumanDetails2Widget(
                                                  share: () async {},
                                                  watchNow: () async {},
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
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
