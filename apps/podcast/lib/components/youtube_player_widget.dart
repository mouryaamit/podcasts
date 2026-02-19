import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'youtube_player_model.dart';
export 'youtube_player_model.dart';

class YoutubePlayerWidget extends StatefulWidget {
  const YoutubePlayerWidget({super.key});

  @override
  State<YoutubePlayerWidget> createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YoutubePlayerModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
      child: Container(
        width: valueOrDefault<double>(
          () {
            if (MediaQuery.sizeOf(context).width <
                valueOrDefault<double>(
                  kBreakpointSmall,
                  600.0,
                )) {
              return 376;
            } else if (MediaQuery.sizeOf(context).width >
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
            if (MediaQuery.sizeOf(context).width <
                valueOrDefault<double>(
                  kBreakpointSmall,
                  600.0,
                )) {
              return 318;
            } else if (MediaQuery.sizeOf(context).width >
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
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'India\'s MSMEs 2025: Signals & Path to Capital',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Color(0xFF111827),
                          fontSize: MediaQuery.sizeOf(context).width > 498.0
                              ? 40.0
                              : 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                          lineHeight: 2.0,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width <
                            valueOrDefault<double>(
                              kBreakpointSmall,
                              600.0,
                            )) {
                          return 365;
                        } else if (MediaQuery.sizeOf(context).width >
                            valueOrDefault<double>(
                              kBreakpointLarge,
                              1200.0,
                            )) {
                          return 1080;
                        } else {
                          return 1000;
                        }
                      }()
                          .toDouble(),
                      1000.0,
                    ),
                    height: valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width <
                            valueOrDefault<double>(
                              kBreakpointSmall,
                              600.0,
                            )) {
                          return 181;
                        } else if (MediaQuery.sizeOf(context).width >
                            valueOrDefault<double>(
                              kBreakpointLarge,
                              1200.0,
                            )) {
                          return 453;
                        } else {
                          return 4532;
                        }
                      }()
                          .toDouble(),
                      453.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowWebView(
                        content:
                            'https://www.youtube.com/embed/eL6ee7hfAqo?si=Iq9DfuYiozHfHh2y',
                        bypass: false,
                        width: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                valueOrDefault<double>(
                                  kBreakpointSmall,
                                  900.0,
                                )) {
                              return 365;
                            } else if (MediaQuery.sizeOf(context).width >
                                valueOrDefault<double>(
                                  kBreakpointLarge,
                                  900.0,
                                )) {
                              return 1080;
                            } else {
                              return 1000;
                            }
                          }()
                              .toDouble(),
                          1000.0,
                        ),
                        height: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                valueOrDefault<double>(
                                  kBreakpointSmall,
                                  600.0,
                                )) {
                              return 181;
                            } else if (MediaQuery.sizeOf(context).width >
                                valueOrDefault<double>(
                                  kBreakpointLarge,
                                  1200.0,
                                )) {
                              return 453;
                            } else {
                              return 4532;
                            }
                          }()
                              .toDouble(),
                          453.0,
                        ),
                        verticalScroll: false,
                        horizontalScroll: false,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  'https://youtube.com/@sidbi-jocatasumpoorn?si=GKHCgiDEt9L60RYE');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/youtube_img.png',
                                width: valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        valueOrDefault<double>(
                                          kBreakpointSmall,
                                          600.0,
                                        )) {
                                      return 28;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        valueOrDefault<double>(
                                          kBreakpointLarge,
                                          900.0,
                                        )) {
                                      return 49;
                                    } else {
                                      return 49;
                                    }
                                  }()
                                      .toDouble(),
                                  49.0,
                                ),
                                height: valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        valueOrDefault<double>(
                                          kBreakpointSmall,
                                          600.0,
                                        )) {
                                      return 19;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        valueOrDefault<double>(
                                          kBreakpointLarge,
                                          900.0,
                                        )) {
                                      return 49;
                                    } else {
                                      return 4532;
                                    }
                                  }()
                                      .toDouble(),
                                  453.0,
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://youtube.com/@sidbi-jocatasumpoorn?si=GKHCgiDEt9L60RYE');
                              },
                              child: Text(
                                'Youtube',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize:
                                          MediaQuery.sizeOf(context).width >
                                                  900.0
                                              ? 20.0
                                              : 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Share',
                      icon: Icon(
                        Icons.ios_share_outlined,
                        size: 28.0,
                      ),
                      options: FFButtonOptions(
                        height: 46.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x00FFFFFF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF30AC6B),
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Color(0xFF1DB954),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
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
