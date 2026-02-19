import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'watch_now_dialog_model.dart';
export 'watch_now_dialog_model.dart';

class WatchNowDialogWidget extends StatefulWidget {
  const WatchNowDialogWidget({
    super.key,
    required this.link,
  });

  final String? link;

  @override
  State<WatchNowDialogWidget> createState() => _WatchNowDialogWidgetState();
}

class _WatchNowDialogWidgetState extends State<WatchNowDialogWidget> {
  late WatchNowDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WatchNowDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: valueOrDefault<double>(
        () {
          if (MediaQuery.sizeOf(context).width <
              valueOrDefault<double>(
                kBreakpointSmall,
                600.0,
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
                600.0,
              )) {
            return 255;
          } else if (MediaQuery.sizeOf(context).width >
              valueOrDefault<double>(
                kBreakpointLarge,
                900.0,
              )) {
            return 575;
          } else {
            return 674;
          }
        }()
            .toDouble(),
        674.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close_sharp,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: MediaQuery.sizeOf(context).width <
                          valueOrDefault<double>(
                            kBreakpointSmall,
                            900.0,
                          )
                      ? 20.0
                      : 28.0,
                ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowWebView(
                    content: widget!.link!,
                    bypass: false,
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    verticalScroll: false,
                    horizontalScroll: false,
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FlutterFlowWebView(
                      content: widget!.link!,
                      bypass: false,
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
