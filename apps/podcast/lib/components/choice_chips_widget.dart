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
  const ChoiceChipsWidget({super.key});

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
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FFButtonWidget(
            onPressed: () async {
              await Future.wait([
                Future(() async {
                  FFAppState().selectedTab = 1;
                  safeSetState(() {});
                }),
                Future(() async {
                  context.goNamed(
                    PodcastWidget.routeName,
                    queryParameters: {
                      'selectedPage': serializeParam(
                        '',
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                }),
              ]);
            },
            text: 'Podcast',
            options: FFButtonOptions(
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: (FFAppState().selectedTab == 1) ||
                      (FFAppState().selectedTab == 0)
                  ? Color(0xFF30AC6B)
                  : FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: (FFAppState().selectedTab == 1) ||
                            (FFAppState().selectedTab == 0)
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
                color: (FFAppState().selectedTab == 1) ||
                        (FFAppState().selectedTab == 0)
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
              await Future.wait([
                Future(() async {
                  FFAppState().selectedTab = 2;
                  safeSetState(() {});
                }),
                Future(() async {
                  context.goNamed(
                    VideosWidget.routeName,
                    queryParameters: {
                      'selectedPage': serializeParam(
                        '',
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                }),
              ]);
            },
            text: 'Videos',
            options: FFButtonOptions(
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FFAppState().selectedTab == 2
                  ? Color(0xFF30AC6B)
                  : FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: FFAppState().selectedTab == 2
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
                color: FFAppState().selectedTab == 2
                    ? Color(0xFF30AC6B)
                    : Color(0xFFE5E7EB),
                width: 0.0,
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
            showLoadingIndicator: false,
          ),
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
