import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'professionals_model.dart';
export 'professionals_model.dart';

class ProfessionalsWidget extends StatefulWidget {
  const ProfessionalsWidget({
    super.key,
    required this.responsesDoc,
  });

  final ResponsesRecord? responsesDoc;

  @override
  State<ProfessionalsWidget> createState() => _ProfessionalsWidgetState();
}

class _ProfessionalsWidgetState extends State<ProfessionalsWidget> {
  late ProfessionalsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfessionalsModel());

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
      width: 300.0,
      height: 150.0,
      child: Stack(
        children: [
          Container(
            width: 300.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                0,
                10.0,
                0,
                0,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                  child: Text(
                    'Type: ${valueOrDefault<String>(
                      widget.responsesDoc?.type,
                      'type[Default]',
                    )}',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 10.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.responsesDoc?.shortDescription,
                      'shortDesc[Default]',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                        ),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
