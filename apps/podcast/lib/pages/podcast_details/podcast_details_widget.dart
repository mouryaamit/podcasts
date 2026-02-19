import '/components/explore_episodes_budget_widget.dart';
import '/components/shorts_zeenat_hamirani_widget.dart';
import '/components/speaker_widget.dart';
import '/components/timestamp_widget.dart';
import '/components/youtube_player_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'podcast_details_model.dart';
export 'podcast_details_model.dart';

class PodcastDetailsWidget extends StatefulWidget {
  const PodcastDetailsWidget({super.key});

  static String routeName = 'PodcastDetails';
  static String routePath = '/podcastDetails';

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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Container(
                      width: double.infinity,
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
                        width: 1450.0,
                        height: 120.0,
                        child: custom_widgets.Header(
                          width: 1450.0,
                          height: 120.0,
                        ),
                      ),
                    ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: Container(
                          width: 1450.9,
                          height: 754.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF062A50),
                                            fontSize: 52.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
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
                                          _model.choiceChipsValue =
                                              val?.firstOrNull),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor: Color(0xFF30AC6B),
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
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 2.0,
                                            )
                                          ],
                                        ),
                                        iconColor: Color(0x00000000),
                                        iconSize: 0.0,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 10.0, 14.0, 10.0),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
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
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        iconColor: Color(0x00000000),
                                        iconSize: 0.0,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 10.0, 14.0, 10.0),
                                        elevation: 0.0,
                                        borderColor: Color(0xFFE5E7EB),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 20.0,
                                      rowSpacing: 8.0,
                                      multiselect: false,
                                      initialized:
                                          _model.choiceChipsValue != null,
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
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 500.0,
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
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.youtubePlayerModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: YoutubePlayerWidget(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  498.0
                                              ? 100.0
                                              : 35.0,
                                          0.0,
                                        ),
                                        40.0,
                                        40.0,
                                        10.0),
                                    child: Text(
                                      'India’s Union Budget 2026 arrives as MSMEs show cautious recovery, reflected in the Sumpoorn Index’s late-2025 uptick. This post-Budget roundtable brings together voices from policy, trade, exports, credit, and fintech to assess whether Budget intent can translate into on-ground execution. In this discussion, experts examine credit and liquidity reforms like mandatory TReDS usage and the new ₹10,000 crore SME Growth Fund, alongside export opportunities from recent FTAs with the EU and UK. At the same time, panelists highlight persistent frictions - delayed payments, compliance burden, logistics variability, weak local governance, and limited state capacity.\nThe core question remains: while capital access is improving, can India address land, labour, law, and local execution to truly reimagine MSME growth?',
                                      textAlign: TextAlign.justify,
                                      maxLines: 7,
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        height: 2.0,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width > 498.0
                                            ? 50.0
                                            : 20.0,
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
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0x00FFFFFF),
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          desktop: false,
                                                        ))
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          _model.selectedIndex =
                                                                              1;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        text:
                                                                            'Highlights',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .videocam_outlined,
                                                                          size:
                                                                              22.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              148.0,
                                                                          height:
                                                                              44.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color: _model.selectedIndex == 1
                                                                              ? Color(0xFF30AC6B)
                                                                              : Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
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
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFDEDEDE),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          _model.selectedIndex =
                                                                              2;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        text:
                                                                            'Timestamp',
                                                                        icon:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .clock,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              148.0,
                                                                          height:
                                                                              44.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color: _model.selectedIndex == 2
                                                                              ? Color(0xFF30AC6B)
                                                                              : Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
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
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFDEDEDE),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          _model.selectedIndex =
                                                                              3;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        text:
                                                                            'AI Summary',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .celebration_rounded,
                                                                          size:
                                                                              22.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              148.0,
                                                                          height:
                                                                              44.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color: _model.selectedIndex == 3
                                                                              ? Color(0xFF30AC6B)
                                                                              : Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
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
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFDEDEDE),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          _model.selectedIndex =
                                                                              4;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        text:
                                                                            'Conversation',
                                                                        icon:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .pen,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              148.0,
                                                                          height:
                                                                              44.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color: _model.selectedIndex == 4
                                                                              ? Color(0xFF30AC6B)
                                                                              : Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
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
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFDEDEDE),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            20.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                  elevation:
                                                                      0.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
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
                                                                                              Text(
                                                                                                'Highlights',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.inter(
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: Color(0xFF404040),
                                                                                                      fontSize: 24.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                            child: SingleChildScrollView(
                                                                                              scrollDirection: Axis.horizontal,
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.shortsZeenatHamiraniModel1,
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: ShortsZeenatHamiraniWidget(),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.shortsZeenatHamiraniModel2,
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: ShortsZeenatHamiraniWidget(),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.shortsZeenatHamiraniModel3,
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: ShortsZeenatHamiraniWidget(),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(width: 15.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    );
                                                                                  } else if (_model.selectedIndex == 2) {
                                                                                    return Container(
                                                                                      child: wrapWithModel(
                                                                                        model: _model.timestampModel1,
                                                                                        updateCallback: () => safeSetState(() {}),
                                                                                        child: TimestampWidget(),
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
                                                                                            Text(
                                                                                              'AI Summary',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.inter(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF404040),
                                                                                                    fontSize: 24.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                          child: RichText(
                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                            text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                  text: 'The May 2025 Jocata Sumpoorn Index indicates a period of mild expansion for Indian MSMEs, with the index rising to 0.57 from 0.56 in April. This reading reflects the resilience of MSME activity, as every month since November 2024 has surpassed its counterpart from the previous year.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\n\nRegional and Sectoral Performance\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'Top Performing States: Telangana (0.62) and Uttar Pradesh (0.60) stood out as the top performers in May, while Maharashtra and Gujarat performed in line with the national average.\nConsumer Spending: Retail sales grew by 7% year-over-year (YoY), a significant improvement from the 3% growth seen in May 2024. Specific segments like Quick Service Restaurants (10%), consumer durables (8%), and apparel (7%) showed strong discretionary spending.\nExports: Non-petroleum exports grew by approximately 5% YoY, driven by \"China+1\" sourcing strategies. MSME-heavy sectors saw exceptional growth, including electronic goods (54.10%) and marine products (26.79%).\nAutomotives and Real Estate: These sectors showed signs of softening; vehicle registrations grew only 5.7%, and new real estate launches in Mumbai plummeted by 36%.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\n\nCredit Growth and Formalization\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'The credit landscape for MSMEs shows a shift toward formalization and digital inclusion:\nLending Trends: While overall bank credit growth moderated to 9%, MSME priority sector lending remained healthy at 18% YoY growth.\nNew-to-Credit (NTC) Borrowers: Approximately 55% of borrowers in the sub-₹1 crore loan category are entering the formal lending system for the first time.\nFormalization Tools: The Udyam Assist portal, managed by SIDBI, is identified as a \"game changer\" in bringing informal micro-enterprises into the formal economy.\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\nPortfolio Health and Risks\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'While the general outlook is positive, the sources highlight specific areas of concern regarding debt repayment:\nOverall Improvement: The gross NPA ratio for MSME portfolios improved to 3.6% by March 2025, down from 4.5% the previous year.\nSmall-Ticket Stress: There is rising delinquency in the sub-₹10 lakh segment, where rates climbed to 5.8% from 5.1% a year ago. This stress is attributed to the high volume of NTC borrowers who lack bureau history and the prevalence of unsecured lending.\nLender Caution: Due to rising delinquencies and regulatory caution, NBFCs and microfinance institutions have tightened lending for unsecured small-ticket business loans.\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\nOutlook for 2025-2026\n',
                                                                                                  style: GoogleFonts.inter(
                                                                                                    color: Colors.black,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontSize: 14.0,
                                                                                                  ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'The podcast suggest a cautiously optimistic outlook. Rural demand is expected to remain strong due to an early and favorable monsoon and solid foodgrain buffers from record rice and wheat crops. Additionally, the government’s ₹27 lakh crore infrastructure pipeline acts as a counterbalance to the real estate slowdown. Emerging trade opportunities, such as the finalized Free Trade Agreement with the UK, are expected to benefit labor-intensive industries like textiles and leather in the coming year.',
                                                                                                  style: GoogleFonts.inter(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 14.0,
                                                                                                    height: 1.4,
                                                                                                  ),
                                                                                                )
                                                                                              ],
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.inter(
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                            textAlign: TextAlign.start,
                                                                                          ),
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
                                                                                                    font: GoogleFonts.inter(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF404040),
                                                                                                    fontSize: 24.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                          child: RichText(
                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                            text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                  text: 'The May 2025 Jocata Sumpoorn Index indicates a period of mild expansion for Indian MSMEs, with the index rising to 0.57 from 0.56 in April. This reading reflects the resilience of MSME activity, as every month since November 2024 has surpassed its counterpart from the previous year.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\n\nRegional and Sectoral Performance\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'Top Performing States: Telangana (0.62) and Uttar Pradesh (0.60) stood out as the top performers in May, while Maharashtra and Gujarat performed in line with the national average.\nConsumer Spending: Retail sales grew by 7% year-over-year (YoY), a significant improvement from the 3% growth seen in May 2024. Specific segments like Quick Service Restaurants (10%), consumer durables (8%), and apparel (7%) showed strong discretionary spending.\nExports: Non-petroleum exports grew by approximately 5% YoY, driven by \"China+1\" sourcing strategies. MSME-heavy sectors saw exceptional growth, including electronic goods (54.10%) and marine products (26.79%).\nAutomotives and Real Estate: These sectors showed signs of softening; vehicle registrations grew only 5.7%, and new real estate launches in Mumbai plummeted by 36%.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\n\nCredit Growth and Formalization\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'The credit landscape for MSMEs shows a shift toward formalization and digital inclusion:\nLending Trends: While overall bank credit growth moderated to 9%, MSME priority sector lending remained healthy at 18% YoY growth.\nNew-to-Credit (NTC) Borrowers: Approximately 55% of borrowers in the sub-₹1 crore loan category are entering the formal lending system for the first time.\nFormalization Tools: The Udyam Assist portal, managed by SIDBI, is identified as a \"game changer\" in bringing informal micro-enterprises into the formal economy.\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\nPortfolio Health and Risks\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'While the general outlook is positive, the sources highlight specific areas of concern regarding debt repayment:\nOverall Improvement: The gross NPA ratio for MSME portfolios improved to 3.6% by March 2025, down from 4.5% the previous year.\nSmall-Ticket Stress: There is rising delinquency in the sub-₹10 lakh segment, where rates climbed to 5.8% from 5.1% a year ago. This stress is attributed to the high volume of NTC borrowers who lack bureau history and the prevalence of unsecured lending.\nLender Caution: Due to rising delinquencies and regulatory caution, NBFCs and microfinance institutions have tightened lending for unsecured small-ticket business loans.\n',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Colors.black,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        lineHeight: 1.4,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: '\nOutlook for 2025-2026\n',
                                                                                                  style: GoogleFonts.inter(
                                                                                                    color: Colors.black,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontSize: 14.0,
                                                                                                  ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: 'The podcast suggest a cautiously optimistic outlook. Rural demand is expected to remain strong due to an early and favorable monsoon and solid foodgrain buffers from record rice and wheat crops. Additionally, the government’s ₹27 lakh crore infrastructure pipeline acts as a counterbalance to the real estate slowdown. Emerging trade opportunities, such as the finalized Free Trade Agreement with the UK, are expected to benefit labor-intensive industries like textiles and leather in the coming year.',
                                                                                                  style: GoogleFonts.inter(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 14.0,
                                                                                                    height: 1.4,
                                                                                                  ),
                                                                                                )
                                                                                              ],
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.inter(
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
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
                                                              ),
                                                            ],
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        80.0,
                                                                        50.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        _model.selectedIndex =
                                                                            1;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      text:
                                                                          'Highlights',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .videocam_outlined,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            132.0,
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: _model.selectedIndex ==
                                                                                1
                                                                            ? Color(0xFF30AC6B)
                                                                            : Color(0x00FFFFFF),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
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
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFDEDEDE),
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                    ),
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        _model.selectedIndex =
                                                                            2;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      text:
                                                                          'Timestamp',
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .clock,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            140.0,
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: _model.selectedIndex ==
                                                                                2
                                                                            ? Color(0xFF30AC6B)
                                                                            : Color(0x00FFFFFF),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
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
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFDEDEDE),
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                    ),
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        _model.selectedIndex =
                                                                            3;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      text:
                                                                          'AI Summary',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .celebration_rounded,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            146.0,
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: _model.selectedIndex ==
                                                                                3
                                                                            ? Color(0xFF30AC6B)
                                                                            : Color(0x00FFFFFF),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
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
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFDEDEDE),
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                    ),
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        _model.selectedIndex =
                                                                            4;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      text:
                                                                          'Conversation',
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .pen,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            156.0,
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: _model.selectedIndex ==
                                                                                4
                                                                            ? Color(0xFF30AC6B)
                                                                            : Color(0x00FFFFFF),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
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
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFDEDEDE),
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          25.0)),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                  elevation:
                                                                      0.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            40.0,
                                                                            10.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Stack(
                                                                          children: [
                                                                            Builder(
                                                                              builder: (context) {
                                                                                if (_model.selectedIndex == 1) {
                                                                                  return Container(
                                                                                    width: 945.7,
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
                                                                                                    font: GoogleFonts.inter(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF404040),
                                                                                                    fontSize: 32.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () {
                                                                                                print('Button pressed ...');
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
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Container(
                                                                                                child: wrapWithModel(
                                                                                                  model: _model.shortsZeenatHamiraniModel4,
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: ShortsZeenatHamiraniWidget(),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                child: wrapWithModel(
                                                                                                  model: _model.shortsZeenatHamiraniModel5,
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: ShortsZeenatHamiraniWidget(),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(SizedBox(width: 25.0)),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                Container(
                                                                                                  child: wrapWithModel(
                                                                                                    model: _model.shortsZeenatHamiraniModel6,
                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                    child: ShortsZeenatHamiraniWidget(),
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  child: wrapWithModel(
                                                                                                    model: _model.shortsZeenatHamiraniModel7,
                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                    child: ShortsZeenatHamiraniWidget(),
                                                                                                  ),
                                                                                                ),
                                                                                              ].divide(SizedBox(width: 25.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  );
                                                                                } else if (_model.selectedIndex == 2) {
                                                                                  return wrapWithModel(
                                                                                    model: _model.timestampModel2,
                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                    child: TimestampWidget(),
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
                                                                                                  font: GoogleFonts.inter(
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF404040),
                                                                                                  fontSize: 32.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                          ),
                                                                                          FFButtonWidget(
                                                                                            onPressed: () {
                                                                                              print('Button pressed ...');
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
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'The May 2025 Jocata Sumpoorn Index indicates a period of mild expansion for Indian MSMEs, with the index rising to 0.57 from 0.56 in April. This reading reflects the resilience of MSME activity, as every month since November 2024 has surpassed its counterpart from the previous year.\n\nRegional and Sectoral Performance\nTop Performing States: Telangana (0.62) and Uttar Pradesh (0.60) stood out as the top performers in May, while Maharashtra and Gujarat performed in line with the national average.\nConsumer Spending: Retail sales grew by 7% year-over-year (YOY), α significant improvement from the 3% growth seen in May 2024. Specific segments like Quick Service Restaurants (10%), consumer durables (8%), and apparel (7%) showed strong discretionary spending.\nExports: Non-petroleum exports grew by approximately 5% YoY, driven by \"China+1\" sourcing strategies. MSME-heavy sectors saw exceptional growth, including electronic goods (54.10%) and marine products (26.79%).\nAutomotives and Real Estate: These sectors showed signs of softening; vehicle registrations grew only 5.7%, and new real estate launches in Mumbai plummeted by 36%.\n\nCredit Growth and Formalization\nThe credit landscape for MSMEs shows a shift toward formalization and digital inclusion:\nLending Trends: While overall bank credit growth moderated to 9%, MSME priority sector lending remained healthy at 18% YoY growth.\nNew-to-Credit (NTC) Borrowers: Approximately 55% of borrowers in the sub–₹1 crore loan category are entering the formal lending system for the first time.\nFormalization Tools: The Udyam Assist portal, managed by SIDBI, is identified as a \"game changer\" in bringing informal micro-enterprises into the formal economy.\n\nPortfolio Health and Risks\nWhile the general outlook is positive, the sources highlight specific areas of concern regarding debt repayment:\nOverall Improvement: The gross NPA ratio for MSME portfolios improved to 3.6% by March 2025, down from 4.5% the previous year.\nSmall-Ticket Stress: There is rising delinquency in the sub–₹10 lakh segment, where rates climbed to 5.8% from 5.1% a year ago. This stress is attributed to the high volume of NTC borrowers who lack bureau history and the prevalence of unsecured lending.\nLender Caution: Due to rising delinquencies and regulatory caution, NBFCs and microfinance institutions have tightened lending for unsecured small-ticket business loans.\n\nOutlook for 2025–2026\nThe podcast suggest a cautiously optimistic outlook. Rural demand is expected to remain strong due to an early and favorable monsoon and solid foodgrain buffers from record rice and wheat crops. Additionally, the government’s ₹27 lakh crore infrastructure pipeline acts as a counterbalance to the real estate slowdown. Emerging trade oppurtunities such as the finalized Free Trade Agreement with the UK, are expected to benefit labor-intensive industries like textiles and leather in the coming year.',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.poppins(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                color: Colors.black,
                                                                                                fontSize: 22.49,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                lineHeight: 1.5,
                                                                                              ),
                                                                                        ),
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
                                                                                                  font: GoogleFonts.inter(
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF404040),
                                                                                                  fontSize: 32.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                          ),
                                                                                          FFButtonWidget(
                                                                                            onPressed: () {
                                                                                              print('Button pressed ...');
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
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'The May 2025 Jocata Sumpoorn Index indicates a period of mild expansion for Indian MSMEs, with the index rising to 0.57 from 0.56 in April. This reading reflects the resilience of MSME activity, as every month since November 2024 has surpassed its counterpart from the previous year.\n\nRegional and Sectoral Performance\nTop Performing States: Telangana (0.62) and Uttar Pradesh (0.60) stood out as the top performers in May, while Maharashtra and Gujarat performed in line with the national average.\nConsumer Spending: Retail sales grew by 7% year-over-year (YoY), a significant improvement from the 3% growth seen in May 2024. Specific segments like Quick Service Restaurants (10%), consumer durables (8%), and apparel (7%) showed strong discretionary spending.\nHere is the exact text from the screenshot:\nExports: Non-petroleum exports grew by approximately 5% YoY, driven by \"China+1\" sourcing strategies. MSME-heavy sectors saw exceptional growth, including electronic goods (54.10%) and marine products (26.79%).\nAutomotives and Real Estate: These sectors showed signs of softening; vehicle registrations grew only 5.7%, and new real estate launches in Mumbai plummeted by 36%.\n\nCredit Growth and Formalization\nThe credit landscape for MSMEs shows a shift toward formalization and digital inclusion:\nLending Trends: While overall bank credit growth moderated to 9%, MSME priority sector lending remained healthy at 18% YoY growth.\nNew-to-Credit (NTC) Borrowers: Approximately 55% of borrowers in the sub–₹1 crore loan category are entering the formal lending system for the first time.\nFormalization Tools: The Udyam Assist portal, managed by SIDBI, is identified as a \"game changer\" in bringing informal micro-enterprises into the formal economy.\n\nPortfolio Health and Risks\nWhile the general outlook is positive, the sources highlight specific areas of concern regarding debt repayment:\nOverall Improvement: The gross NPA ratio for MSME portfolios improved to 3.6% by March 2025, down from 4.5% the previous year.\nSmall-Ticket Stress: There is rising delinquency in the sub–₹10 lakh segment, where rates climbed to 5.8% from 5.1% a year ago. This stress is attributed to the high volume of NTC borrowers who lack bureau history and the prevalence of unsecured lending.\nLender Caution: Due to rising delinquencies and regulatory caution, NBFCs and microfinance institutions have tightened lending for unsecured small-ticket business loans.\n\nOutlook for 2025–2026\nThe podcast suggest a cautiously optimistic outlook. Rural demand is expected to remain strong due to an early and favorable monsoon and solid foodgrain buffers from record rice and wheat crops. Additionally, the government’s ₹27 lakh crore infrastructure pipeline acts as a counterbalance to the real estate slowdown. Emerging trade oppurtunities such as the finalized Free Trade Agreement with the UK, are expected to benefit labor-intensive industries like textiles and leather in the coming year.',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.poppins(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                color: Colors.black,
                                                                                                fontSize: 22.49,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                lineHeight: 1.5,
                                                                                              ),
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
                                      0.0, 50.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Guest Speaker',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize:
                                                    MediaQuery.sizeOf(context)
                                                                .width >
                                                            498.0
                                                        ? 32.0
                                                        : 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.speakerModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SpeakerWidget(
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/fkUY25tEnYI3GDwVGhie/assets/ibjji7k96agt/Laveesh_Bhandari.png',
                                              name: 'Dr. Laveesh Bhandari',
                                              description:
                                                  'President and Senior Fellow at CSEP, Dr. Bhandari is a leading applied economist whose work spans sustainable livelihoods, economic reforms, financial inclusion, and India’s energy transition. A PhD from Boston University and recipient of the Best Thesis award in International Economics, he has taught at Boston University and IIT Delhi. He also founded Indicus Analytics, bridging rigorous research with real-world policy and industry impact.',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.speakerModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SpeakerWidget(
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/fkUY25tEnYI3GDwVGhie/assets/n02qy5xay3n1/Anil_Bharadwaj.png',
                                              name: 'Mr. Anil Bharadwaj',
                                              description:
                                                  'Secretary General of FISME, Anil Bharadwaj is a senior industry leader with deep expertise in MSME advocacy, trade policy, and export facilitation. He works closely with government and industry stakeholders to strengthen MSME competitiveness, promote exports, and drive regulatory reforms. He also serves as a Member of the Economic Advisory Group, Government of Uttar Pradesh.',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.speakerModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SpeakerWidget(
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/fkUY25tEnYI3GDwVGhie/assets/lnrttxd9k9c1/Unnikrishnan.png',
                                              name:
                                                  'Mr. Unnikrishnan Kottekkat',
                                              description:
                                                  'Joint Director General at FIEO, the apex export promotion body set up by the Ministry of Commerce & Industry, he brings extensive experience in international trade facilitation and export strategy. His work focuses on policy engagement, trade enablement, and strengthening India’s export ecosystem. He plays a key role in building capacity for Indian exporters to compete globally.',
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
                                        MediaQuery.sizeOf(context).width > 498.0
                                            ? 100.0
                                            : 20.0,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Speaker',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize:
                                                    MediaQuery.sizeOf(context)
                                                                .width >
                                                            498.0
                                                        ? 32.0
                                                        : 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.speakerModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SpeakerWidget(
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/e8gprS0m5G3loKTVCTdm/assets/1qk54y1rx95q/sumita_img.png',
                                              name: 'Sumita Kale',
                                              description:
                                                  'Dr. Sumita Kale is a financial and macro-economist and CEO & Senior Fellow at the Indicus Centre for Financial Inclusion. Formerly Chief Economist at Indicus Analytics, she has authored widely on economic and policy issues. As Principal Economist at Jocata, she has been instrumental in shaping the Sumpoorn Index.',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.speakerModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SpeakerWidget(
                                              image:
                                                  'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/projects/e8gprS0m5G3loKTVCTdm/assets/xqf2sg9at77x/narsi_img.png',
                                              name: 'Narasimhan V',
                                              description:
                                                  'A Chartered Accountant with a distinguished career in the information services industry, Mr. Narasimhan previously served as Group COO at Dun & Bradstreet for South Asia, Middle East, and Africa. He has led the implementation of more than 10 credit information bureaus across the region. As the architect of Sumpoorn, he brings deep expertise in credit analytics and economic intelligence to its methodology.',
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
                                        MediaQuery.sizeOf(context).width > 498.0
                                            ? 50.0
                                            : 25.0,
                                        0.0,
                                      ),
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width > 498.0
                                            ? 50.0
                                            : 25.0,
                                        0.0,
                                      )),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Explore Podcast',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .exploreEpisodesBudgetModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    ExploreEpisodesBudgetWidget(),
                                              ),
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
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
