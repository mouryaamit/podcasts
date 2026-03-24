import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'timestamp_model.dart';
export 'timestamp_model.dart';

class TimestampWidget extends StatefulWidget {
  const TimestampWidget({
    super.key,
    required this.timestampsList,
  });

  final List<dynamic>? timestampsList;

  @override
  State<TimestampWidget> createState() => _TimestampWidgetState();
}

class _TimestampWidgetState extends State<TimestampWidget> {
  late TimestampModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimestampModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Builder(
        builder: (context) {
          final timestamps = widget!.timestampsList!.toList();

          return Column(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(timestamps.length, (timestampsIndex) {
              final timestampsItem = timestamps[timestampsIndex];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '[${getJsonField(
                        timestampsItem,
                        r'''$.from''',
                      ).toString()}-${getJsonField(
                        timestampsItem,
                        r'''$.to''',
                      ).toString()}]',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF9CA3AF),
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          timestampsItem,
                          r'''$.title''',
                        ).toString(),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.black,
                              fontSize: MediaQuery.sizeOf(context).width >
                                      valueOrDefault<double>(
                                        kBreakpointSmall,
                                        900.0,
                                      )
                                  ? 21.0
                                  : 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ].divide(SizedBox(width: 49.0)),
                ),
              );
            }).divide(SizedBox(height: 10.0)),
          );
        },
      ),
    );
  }
}
