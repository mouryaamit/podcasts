import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'speaker_model.dart';
export 'speaker_model.dart';

class SpeakerWidget extends StatefulWidget {
  const SpeakerWidget({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  final String? image;
  final String? name;
  final String? description;

  @override
  State<SpeakerWidget> createState() => _SpeakerWidgetState();
}

class _SpeakerWidgetState extends State<SpeakerWidget> {
  late SpeakerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeakerModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 40.0,
            color: Color(0xFFD0D0D0),
            offset: Offset(
              12.0,
              12.0,
            ),
            spreadRadius: 5.0,
          )
        ],
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          MediaQuery.sizeOf(context).width >
                  valueOrDefault<double>(
                    kBreakpointSmall,
                    900.0,
                  )
              ? 12.0
              : 4.0,
          0.0,
        )),
        border: Border.all(
          color: Color(0xFFE5E7EB),
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              MediaQuery.sizeOf(context).width > 900.0 ? 20.0 : 10.0,
              0.0,
            ),
            0.0,
            0.0,
            0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width >
                          valueOrDefault<double>(
                            kBreakpointSmall,
                            900.0,
                          )
                      ? 127.0
                      : 110.0,
                  height: MediaQuery.sizeOf(context).width <
                          valueOrDefault<double>(
                            kBreakpointSmall,
                            900.0,
                          )
                      ? 100.0
                      : 123.0,
                  constraints: BoxConstraints(
                    minHeight:
                        MediaQuery.sizeOf(context).width > 900.0 ? 84.0 : 110.0,
                  ),
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      widget!.image!,
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      fit: BoxFit.fill,
                      alignment: Alignment(0.0, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width > 498.0 ? 20.0 : 10.0,
                        0.0,
                      ),
                      0.0,
                      0.0,
                      0.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).width <
                            valueOrDefault<double>(
                              kBreakpointSmall,
                              900.0,
                            )
                        ? 170.0
                        : 130.0,
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          12.0,
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width > 900.0
                                ? 100.0
                                : 10.0,
                            0.0,
                          ),
                          12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget!.name,
                                'Name',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
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
                                        ? 20.0
                                        : 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width > 498.0
                                        ? 10.0
                                        : 5.0,
                                    0.0,
                                  ),
                                  0.0,
                                  0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.description,
                                  'Description',
                                ),
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF6B7280),
                                  fontSize: MediaQuery.sizeOf(context).width >
                                          valueOrDefault<double>(
                                            kBreakpointSmall,
                                            900.0,
                                          )
                                      ? 13.0
                                      : 10.0,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
