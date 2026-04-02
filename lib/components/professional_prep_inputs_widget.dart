import '/auth/firebase_auth/auth_util.dart';
import '/backend/ai_agents/ai_agent.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'professional_prep_inputs_model.dart';
export 'professional_prep_inputs_model.dart';

/// Create a 'meeting' component.
///
/// This component will be a meeting for a job interview or similar thing, the
/// details depends on the info given to the AI agent. There should be
/// collections in the backend if it's possible. The component itself should
/// include:Type of task (ex: dropdown for meeting, job interview, networking,
/// job research)This component won't store the info coming from the AI, it
/// will just serve as like a pop-up that will take stuff and send it to it
/// then disappear, there will be another component for the actual AI result.
/// Make sure it doesn't crash!! Keep the UI very minimal to and ensure
/// FlutterFlow does not crash!
class ProfessionalPrepInputsWidget extends StatefulWidget {
  const ProfessionalPrepInputsWidget({super.key});

  @override
  State<ProfessionalPrepInputsWidget> createState() =>
      _ProfessionalPrepInputsWidgetState();
}

class _ProfessionalPrepInputsWidgetState
    extends State<ProfessionalPrepInputsWidget> {
  late ProfessionalPrepInputsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfessionalPrepInputsModel());

    _model.companyNameInputTextController ??= TextEditingController();
    _model.companyNameInputFocusNode ??= FocusNode();

    _model.extraDetailsInputTextController ??= TextEditingController();
    _model.extraDetailsInputFocusNode ??= FocusNode();

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
      constraints: BoxConstraints(
        maxWidth: 400.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'd099cx41' /* New Professional Preparation */,
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    font: GoogleFonts.readexPro(
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'gj5h7nnm' /* Task Type */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
            FlutterFlowDropDown<String>(
              controller: _model.proPrepDropDownValueController ??=
                  FormFieldController<String>(null),
              options: [
                FFLocalizations.of(context).getText(
                  'oywzhvw7' /* Get Company Information */,
                ),
                FFLocalizations.of(context).getText(
                  'ny2xja9z' /* Interview/Meeting Preparation */,
                ),
                FFLocalizations.of(context).getText(
                  'lr5ykhj6' /* Ask Interview/Meeting Question... */,
                ),
                FFLocalizations.of(context).getText(
                  'jpjwzgr7' /* Networking Preparation */,
                )
              ],
              onChanged: (val) =>
                  safeSetState(() => _model.proPrepDropDownValue = val),
              width: double.infinity,
              height: 40.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              hintText: FFLocalizations.of(context).getText(
                'n2uzajr6' /* Select... */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'mmj8udbn' /* Company Name */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                ),
                TextFormField(
                  controller: _model.companyNameInputTextController,
                  focusNode: _model.companyNameInputFocusNode,
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  minLines: 1,
                  validator: _model.companyNameInputTextControllerValidator
                      .asValidator(context),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '61r8jde0' /* Extra Details */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                ),
                TextFormField(
                  controller: _model.extraDetailsInputTextController,
                  focusNode: _model.extraDetailsInputFocusNode,
                  autofocus: false,
                  textInputAction: TextInputAction.done,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  maxLines: 6,
                  minLines: 3,
                  keyboardType: TextInputType.multiline,
                  validator: _model.extraDetailsInputTextControllerValidator
                      .asValidator(context),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'yov374ko' /* Cancel */,
                  ),
                  options: FFButtonOptions(
                    width: 140.0,
                    height: 48.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'PROFESSIONAL_PREP_INPUTS_SUBMIT_BTN_ON_T');
                    logFirebaseEvent('Button_a_i_agent');
                    await callAiAgent(
                      context: context,
                      prompt: functions.generateResponsePrompt(
                          _model.proPrepDropDownValue!,
                          _model.companyNameInputTextController.text,
                          _model.extraDetailsInputTextController.text),
                      threadId: 'responseIDIDFK',
                      agentCloudFunctionName: 'aIResponseAgent',
                      provider: 'GOOGLE',
                      agentJson:
                          '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"aIResponseAgent\",\"key\":\"po24k\"},\"name\":\"AI Response Agent\",\"description\":\"This AI agent is for responding to users with what they prompt for, typically relating to company information, interview/meeting preparation, questions to ask during an interview/meeting.\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-flash\",\"parameters\":{\"temperature\":{\"inputValue\":1},\"maxTokens\":{\"inputValue\":65535},\"topP\":{\"inputValue\":0.95}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"Your role is to return a JSON response to a given prompt, typically relating to company information, interview/meeting preparation, networking event preparation questions to ask during an interview/meeting.\\n\\nThe JSON response format should look like this:\\n\\n{\\n\\\"type\\\": \\\"string\\\"\\n\\\"short_description\\\": \\\"string\\\"\\n\\\"response\\\": \\\"string\\\"\\n}\\n\\n\\\"type\\\" should either be Company Information, Interview/Meeting Preparation, Ask Interview/Meeting Questions, or Networking Event Preparation. \\\"short_description\\\" should be a very short description (5 words or less) summarizing the response to use as a header. \\\"response\\\" should just be the response in text for the given prompt.\"}]},\"requestOptions\":{\"requestTypes\":[\"PLAINTEXT\"]},\"responseOptions\":{\"responseType\":\"JSON\"}}',
                      responseType: 'JSON',
                    ).then((generatedText) {
                      safeSetState(() => _model.aiResponse = generatedText);
                    });

                    logFirebaseEvent('Button_backend_call');

                    await ResponsesRecord.collection
                        .doc()
                        .set(createResponsesRecordData(
                          type: getJsonField(
                            _model.aiResponse,
                            r'''$.type''',
                          ).toString(),
                          shortDescription: getJsonField(
                            _model.aiResponse,
                            r'''$.short_description''',
                          ).toString(),
                          response: getJsonField(
                            _model.aiResponse,
                            r'''$.response''',
                          ).toString(),
                          user: currentUserReference,
                        ));
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
                    if (_model.proPrepDropDownValue ==
                        'Get Company Information') {
                      logFirebaseEvent('Button_backend_call');

                      await _model.metricsPersonalDoc!.reference
                          .update(createMetricsPersonalRecordData(
                        aiCounts: createAIPromptTypeCountStruct(
                          fieldValues: {
                            'Company_Information': FieldValue.increment(1),
                          },
                          clearUnsetFields: false,
                        ),
                        adoptionFlag: 1,
                      ));
                    } else {
                      if (_model.proPrepDropDownValue ==
                          'Interview/Meeting Preparation') {
                        logFirebaseEvent('Button_backend_call');

                        await _model.metricsPersonalDoc!.reference
                            .update(createMetricsPersonalRecordData(
                          aiCounts: createAIPromptTypeCountStruct(
                            fieldValues: {
                              'Interview_Meeting_Preparation':
                                  FieldValue.increment(1),
                            },
                            clearUnsetFields: false,
                          ),
                          adoptionFlag: 1,
                        ));
                      } else {
                        if (_model.proPrepDropDownValue ==
                            'Ask Interview/Meeting Questions') {
                          logFirebaseEvent('Button_backend_call');

                          await _model.metricsPersonalDoc!.reference
                              .update(createMetricsPersonalRecordData(
                            aiCounts: createAIPromptTypeCountStruct(
                              fieldValues: {
                                'Ask_Interview_Meeting_Questions':
                                    FieldValue.increment(1),
                              },
                              clearUnsetFields: false,
                            ),
                            adoptionFlag: 1,
                          ));
                        } else {
                          logFirebaseEvent('Button_backend_call');

                          await _model.metricsPersonalDoc!.reference
                              .update(createMetricsPersonalRecordData(
                            aiCounts: createAIPromptTypeCountStruct(
                              fieldValues: {
                                'Networking_Preparation':
                                    FieldValue.increment(1),
                              },
                              clearUnsetFields: false,
                            ),
                            adoptionFlag: 1,
                          ));
                        }
                      }
                    }

                    logFirebaseEvent('Button_rebuild_component');
                    _model.updatePage(() {});
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'v05yw9gz' /* Submit */,
                  ),
                  options: FFButtonOptions(
                    width: 140.0,
                    height: 48.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
