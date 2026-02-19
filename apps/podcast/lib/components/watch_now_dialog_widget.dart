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
      width: 500.0,
      height: 700.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                  size: 35.0,
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
