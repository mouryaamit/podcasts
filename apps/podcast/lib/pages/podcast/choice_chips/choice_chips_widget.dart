import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choice_chips_model.dart';
export 'choice_chips_model.dart';

class ChoiceChipsWidget extends StatefulWidget {
  const ChoiceChipsWidget({
    super.key,
    this.activeTab,
  });

  final String? activeTab;

  @override
  State<ChoiceChipsWidget> createState() => _ChoiceChipsWidgetState();
}

class _ChoiceChipsWidgetState extends State<ChoiceChipsWidget> {
  late ChoiceChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoiceChipsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FFButtonWidget(
            onPressed: () async {
              context.goNamed(
                PodcastWidget.routeName,
                queryParameters: {
                  'selectedPage': serializeParam(
                    '',
                    ParamType.String,
                  ),
                }.withoutNulls,
                extra: <String, dynamic>{
                  '__transition_info__': TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
            text: 'Podcast',
            options: FFButtonOptions(
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: widget!.activeTab == 'podcast'
                  ? Color(0xFF30AC6B)
                  : FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: widget!.activeTab == 'podcast'
                        ? Colors.white
                        : Color(0xFF374151),
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderSide: BorderSide(
                color: widget!.activeTab == 'podcast'
                    ? Color(0xFF30AC6B)
                    : Color(0xFFE5E7EB),
                width: 0.0,
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
            showLoadingIndicator: false,
          ),
          FFButtonWidget(
            onPressed: () async {
              context.goNamed(
                VideosWidget.routeName,
                queryParameters: {
                  'selectedPage': serializeParam(
                    '',
                    ParamType.String,
                  ),
                }.withoutNulls,
                extra: <String, dynamic>{
                  '__transition_info__': TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
            text: 'Videos',
            options: FFButtonOptions(
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: widget!.activeTab == 'videos'
                  ? Color(0xFF30AC6B)
                  : FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: widget!.activeTab == 'videos'
                        ? Colors.white
                        : Color(0xFF374151),
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderSide: BorderSide(
                color: widget!.activeTab == 'videos'
                    ? Color(0xFF30AC6B)
                    : Color(0xFFE5E7EB),
                width: 0.0,
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
            showLoadingIndicator: false,
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Newsletter',
              options: FFButtonOptions(
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                      color: Color(0xFF374151),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Color(0xFFE5E7EB),
                  width: 0.0,
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
              showLoadingIndicator: false,
            ),
        ].divide(SizedBox(width: 15.0)),
      ),
    );
  }
}
