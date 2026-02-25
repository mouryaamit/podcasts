import '/components/watch_now_dialog_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'shorts_suman_model.dart';
export 'shorts_suman_model.dart';

class ShortsSumanWidget extends StatefulWidget {
  const ShortsSumanWidget({
    super.key,
    required this.share,
    required this.watchNow,
  });

  final Future Function()? share;
  final Future Function()? watchNow;

  @override
  State<ShortsSumanWidget> createState() => _ShortsSumanWidgetState();
}

class _ShortsSumanWidgetState extends State<ShortsSumanWidget> {
  late ShortsSumanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShortsSumanModel());

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
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 392.0,
                height: 557.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Color(0xA8A4A5A7),
                  ),
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 359.0,
                          height: 359.0,
                          constraints: BoxConstraints(
                            minHeight: 359.0,
                            maxHeight: 359.0,
                          ),
                          decoration: BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/x7hc1_7.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: 359.0,
                            constraints: BoxConstraints(
                              minHeight: 48.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Text(
                                'Credit Landscape: Has the Share of Micro Borrowers Gone Up?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF111827),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
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
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: 359.0,
                            decoration: BoxDecoration(),
                            child: Text(
                              'MSME Conversations • June 2025 • 2.13 min',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Builder(
                                builder: (context) => FFButtonWidget(
                                  onPressed: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: WatchNowDialogWidget(
                                              link:
                                                  'https://www.youtube.com/embed/aTaC-fRVMos?si=9U6vjtHGe_WM-LGb',
                                              title:
                                                  'Credit Landscape: Has The Share Of Micro Borrowers Gone Up?',
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  text: 'Watch Now',
                                  options: FFButtonOptions(
                                    width: 104.0,
                                    height: 36.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 2.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF30AC6B),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Color(0xFF30AC6B),
                                    borderRadius: 8.0,
                                    buttonSize: 36.0,
                                    fillColor: Color(0x000FFFFF),
                                    icon: Icon(
                                      Icons.ios_share,
                                      color: Color(0xFF30AC6B),
                                      size: 22.0,
                                    ),
                                    onPressed: () async {
                                      await Share.share(
                                        'https://youtu.be/aTaC-fRVMos?si=xT8NIMWtY9YOOIvB',
                                        sharePositionOrigin:
                                            getWidgetBoundingBox(context),
                                      );
                                    },
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
              ),
            ],
          ),
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 275.0,
                height: 468.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Color(0xA8A4A5A7),
                  ),
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 255.0,
                          height: 255.0,
                          decoration: BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/shorts_suman_img.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              width: 255.0,
                              decoration: BoxDecoration(),
                              child: Text(
                                'Credit Landscape: Has The Share Of Micro Borrowers Gone Up?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF111827),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: 255.0,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'MSME Conversations • June 2025 \n• 2.13 min',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF6B7280),
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Builder(
                                builder: (context) => FFButtonWidget(
                                  onPressed: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: WatchNowDialogWidget(
                                              link:
                                                  'https://www.youtube.com/embed/aTaC-fRVMos?si=9U6vjtHGe_WM-LGb',
                                              title:
                                                  'Credit Landscape: Has The Share Of Micro Borrowers Gone Up?',
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  text: 'Watch Now',
                                  options: FFButtonOptions(
                                    width: 104.0,
                                    height: 36.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 2.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF30AC6B),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Color(0xFF30AC6B),
                                    borderRadius: 8.0,
                                    buttonSize: 36.0,
                                    fillColor: Color(0x000FFFFF),
                                    icon: Icon(
                                      Icons.ios_share,
                                      color: Color(0xFF30AC6B),
                                      size: 22.0,
                                    ),
                                    onPressed: () async {
                                      await Share.share(
                                        'https://youtu.be/aTaC-fRVMos?si=xT8NIMWtY9YOOIvB',
                                        sharePositionOrigin:
                                            getWidgetBoundingBox(context),
                                      );
                                    },
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
              ),
            ],
          ),
      ],
    );
  }
}
