import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'youtube_player_srivats_ram_model.dart';
export 'youtube_player_srivats_ram_model.dart';

class YoutubePlayerSrivatsRamWidget extends StatefulWidget {
  const YoutubePlayerSrivatsRamWidget({super.key});

  @override
  State<YoutubePlayerSrivatsRamWidget> createState() =>
      _YoutubePlayerSrivatsRamWidgetState();
}

class _YoutubePlayerSrivatsRamWidgetState
    extends State<YoutubePlayerSrivatsRamWidget> {
  late YoutubePlayerSrivatsRamModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YoutubePlayerSrivatsRamModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width <
                  valueOrDefault<double>(
                    kBreakpointSmall,
                    900.0,
                  )) {
                return 345;
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
            borderRadius: BorderRadius.circular(7.0),
            border: Border.all(
              color: Color(0xFFD0D0D0),
              width: 0.17,
            ),
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
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width <
                                  valueOrDefault<double>(
                                    kBreakpointSmall,
                                    900.0,
                                  )
                              ? 20.0
                              : 55.0,
                          0.0,
                        ),
                        20.0,
                        valueOrDefault<double>(
                          (MediaQuery.sizeOf(context).width <
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        900.0,
                                      )
                                  ? 20
                                  : 50)
                              .toDouble(),
                          0.0,
                        ),
                        0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      child: Text(
                        'GST 2.0 vs. 50% US Tariffs: Can India\'s Manufacturing MSMEs Survive?',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF111827),
                              fontSize: MediaQuery.sizeOf(context).width >
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        900.0,
                                      )
                                  ? 32.0
                                  : 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.5,
                            ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width <
                                valueOrDefault<double>(
                                  kBreakpointSmall,
                                  900.0,
                                )
                            ? 20.0
                            : 55.0,
                        0.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      900.0,
                                    )
                                ? 20
                                : 50)
                            .toDouble(),
                        0.0,
                      ),
                      0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      900.0,
                                    )) {
                                  return 0;
                                } else if (MediaQuery.sizeOf(context).width >
                                    valueOrDefault<double>(
                                      kBreakpointLarge,
                                      900.0,
                                    )) {
                                  return 20;
                                } else {
                                  return 0;
                                }
                              }()
                                  .toDouble(),
                              0.0,
                            ),
                            0.0,
                            0.0),
                        child: FlutterFlowWebView(
                          content:
                              'https://www.youtube.com/embed/eLxnZ85mbkA?si=k8z2D1fStX6itg1i?playsinline=1&rel=0&modestbranding=1',
                          bypass: false,
                          width: MediaQuery.sizeOf(context).width * 1.0,
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
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width <
                                valueOrDefault<double>(
                                  kBreakpointSmall,
                                  900.0,
                                )
                            ? 20.0
                            : 60.0,
                        0.0,
                      ),
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width <
                                valueOrDefault<double>(
                                  kBreakpointSmall,
                                  900.0,
                                )
                            ? 10.0
                            : 20.0,
                        0.0,
                      ),
                      valueOrDefault<double>(
                        (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      900.0,
                                    )
                                ? 20
                                : 60)
                            .toDouble(),
                        0.0,
                      ),
                      20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                'assets/images/YT_icon_jpg.jpg',
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
                                      return 40;
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
                                      return 38;
                                    } else {
                                      return 4532;
                                    }
                                  }()
                                      .toDouble(),
                                  453.0,
                                ),
                                fit: BoxFit.fill,
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
                                              ? 17.0
                                              : 11.0,
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
                      Builder(
                        builder: (context) => FFButtonWidget(
                          onPressed: () async {
                            await Share.share(
                              'https://youtu.be/eLxnZ85mbkA?si=GpHhOKBZdTd44FW7',
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          },
                          text: 'Share',
                          icon: Icon(
                            Icons.ios_share_outlined,
                            size: valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      600.0,
                                    )) {
                                  return 14;
                                } else if (MediaQuery.sizeOf(context).width >
                                    valueOrDefault<double>(
                                      kBreakpointLarge,
                                      900.0,
                                    )) {
                                  return 18;
                                } else {
                                  return 18;
                                }
                              }()
                                  .toDouble(),
                              18.0,
                            ),
                          ),
                          options: FFButtonOptions(
                            width: valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      600.0,
                                    )) {
                                  return 78;
                                } else if (MediaQuery.sizeOf(context).width >
                                    valueOrDefault<double>(
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
                            height: valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      600.0,
                                    )) {
                                  return 30;
                                } else if (MediaQuery.sizeOf(context).width >
                                    valueOrDefault<double>(
                                      kBreakpointLarge,
                                      900.0,
                                    )) {
                                  return 44;
                                } else {
                                  return 44;
                                }
                              }()
                                  .toDouble(),
                              44.0,
                            ),
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0x00FFFFFF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF30AC6B),
                                  fontSize: valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          valueOrDefault<double>(
                                            kBreakpointSmall,
                                            600.0,
                                          )) {
                                        return 14;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width >
                                          valueOrDefault<double>(
                                            kBreakpointLarge,
                                            900.0,
                                          )) {
                                        return 16;
                                      } else {
                                        return 15;
                                      }
                                    }()
                                        .toDouble(),
                                    15.0,
                                  ),
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
                            borderRadius:
                                BorderRadius.circular(valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        900.0,
                                      )
                                  ? 7.0
                                  : 10.0,
                              0.0,
                            )),
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
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).width <
                    valueOrDefault<double>(
                      kBreakpointSmall,
                      900.0,
                    )) {
                  return 397;
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
                      900.0,
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
              borderRadius: BorderRadius.circular(7.0),
              border: Border.all(
                color: Color(0xFFD0D0D0),
                width: 0.17,
              ),
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      900.0,
                                    )
                                ? 20.0
                                : 55.0,
                            0.0,
                          ),
                          20.0,
                          valueOrDefault<double>(
                            (MediaQuery.sizeOf(context).width <
                                        valueOrDefault<double>(
                                          kBreakpointSmall,
                                          900.0,
                                        )
                                    ? 20
                                    : 50)
                                .toDouble(),
                            0.0,
                          ),
                          0.0),
                      child: Container(
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
                        decoration: BoxDecoration(),
                        child: Text(
                          'MSMEs at a Turning Point: Budget 2026, FTAs, and the Road Ahead',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF111827),
                                    fontSize: MediaQuery.sizeOf(context).width >
                                            valueOrDefault<double>(
                                              kBreakpointSmall,
                                              900.0,
                                            )
                                        ? 32.0
                                        : 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      900.0,
                                    )) {
                                  return 20;
                                } else if (MediaQuery.sizeOf(context).width >
                                    valueOrDefault<double>(
                                      kBreakpointLarge,
                                      900.0,
                                    )) {
                                  return 0;
                                } else {
                                  return 0;
                                }
                              }()
                                  .toDouble(),
                              0.0,
                            ),
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    valueOrDefault<double>(
                                      kBreakpointSmall,
                                      900.0,
                                    )) {
                                  return 0;
                                } else if (MediaQuery.sizeOf(context).width >
                                    valueOrDefault<double>(
                                      kBreakpointLarge,
                                      900.0,
                                    )) {
                                  return 20;
                                } else {
                                  return 0;
                                }
                              }()
                                  .toDouble(),
                              0.0,
                            ),
                            valueOrDefault<double>(
                              (MediaQuery.sizeOf(context).width <
                                          valueOrDefault<double>(
                                            kBreakpointSmall,
                                            900.0,
                                          )
                                      ? 20
                                      : 0)
                                  .toDouble(),
                              0.0,
                            ),
                            0.0),
                        child: FlutterFlowWebView(
                          content:
                              'https://www.youtube.com/embed/eL6ee7hfAqo?playsinline=1&rel=0&modestbranding=1',
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width <
                                  valueOrDefault<double>(
                                    kBreakpointSmall,
                                    900.0,
                                  )
                              ? 20.0
                              : 60.0,
                          0.0,
                        ),
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width <
                                  valueOrDefault<double>(
                                    kBreakpointSmall,
                                    900.0,
                                  )
                              ? 10.0
                              : 20.0,
                          0.0,
                        ),
                        valueOrDefault<double>(
                          (MediaQuery.sizeOf(context).width <
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        900.0,
                                      )
                                  ? 20
                                  : 60)
                              .toDouble(),
                          0.0,
                        ),
                        20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                  'assets/images/YT_icon_jpg.jpg',
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
                                        return 40;
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
                                        return 38;
                                      } else {
                                        return 4532;
                                      }
                                    }()
                                        .toDouble(),
                                    453.0,
                                  ),
                                  fit: BoxFit.fill,
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
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize:
                                            MediaQuery.sizeOf(context).width >
                                                    900.0
                                                ? 17.0
                                                : 11.0,
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
                        Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              await Share.share(
                                'https://youtu.be/eL6ee7hfAqo?si=NNTopsNeGdYJwgX2',
                                sharePositionOrigin:
                                    getWidgetBoundingBox(context),
                              );
                            },
                            text: 'Share',
                            icon: Icon(
                              Icons.ios_share_outlined,
                              size: valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        600.0,
                                      )) {
                                    return 14;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      valueOrDefault<double>(
                                        kBreakpointLarge,
                                        900.0,
                                      )) {
                                    return 18;
                                  } else {
                                    return 18;
                                  }
                                }()
                                    .toDouble(),
                                18.0,
                              ),
                            ),
                            options: FFButtonOptions(
                              width: valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        600.0,
                                      )) {
                                    return 78;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      valueOrDefault<double>(
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
                              height: valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        600.0,
                                      )) {
                                    return 31;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      valueOrDefault<double>(
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF30AC6B),
                                    fontSize: valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            valueOrDefault<double>(
                                              kBreakpointSmall,
                                              600.0,
                                            )) {
                                          return 12;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width >
                                            valueOrDefault<double>(
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
                              borderRadius: BorderRadius.circular(10.0),
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
      ],
    );
  }
}
