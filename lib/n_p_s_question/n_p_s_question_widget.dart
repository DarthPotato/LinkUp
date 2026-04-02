import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'n_p_s_question_model.dart';
export 'n_p_s_question_model.dart';

class NPSQuestionWidget extends StatefulWidget {
  const NPSQuestionWidget({super.key});

  static String routeName = 'NPS_Question';
  static String routePath = '/nPSQuestion';

  @override
  State<NPSQuestionWidget> createState() => _NPSQuestionWidgetState();
}

class _NPSQuestionWidgetState extends State<NPSQuestionWidget> {
  late NPSQuestionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NPSQuestionModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'NPS_Question'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 400.0,
              ),
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'yiep5gos' /* How would you rate LinkUp on a... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
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
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Slider(
                            activeColor: Color(0xFFC2F9BB),
                            inactiveColor:
                                FlutterFlowTheme.of(context).alternate,
                            min: 1.0,
                            max: 10.0,
                            value: _model.sliderValue ??= 5.0,
                            label: _model.sliderValue?.toStringAsFixed(0),
                            divisions: 9,
                            onChanged: (newValue) async {
                              newValue =
                                  double.parse(newValue.toStringAsFixed(0));
                              safeSetState(() => _model.sliderValue = newValue);
                              logFirebaseEvent(
                                  'N_P_S_QUESTION_Slider_g7knb3vy_ON_FORM_W');
                              logFirebaseEvent('Slider_update_page_state');
                              _model.npsSliderValue = _model.sliderValue!;
                              safeSetState(() {});
                            },
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'N_P_S_QUESTION_PAGE_SUBMIT_BTN_ON_TAP');
                            logFirebaseEvent('Button_firestore_query');
                            _model.metricsPersonalDoc =
                                await queryMetricsPersonalRecordOnce(
                              queryBuilder: (metricsPersonalRecord) =>
                                  metricsPersonalRecord.where(
                                'user',
                                isEqualTo: currentUserReference,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            logFirebaseEvent('Button_backend_call');

                            await _model.metricsPersonalDoc!.reference
                                .update(createMetricsPersonalRecordData(
                              npsScore: _model.npsSliderValue,
                            ));
                            logFirebaseEvent('Button_navigate_to');

                            context.goNamed(AiPageWidget.routeName);

                            safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            '78qm2kgw' /* Submit */,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF9AD1D4),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(SizedBox(height: 50.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
