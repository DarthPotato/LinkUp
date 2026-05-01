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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'd099cx41' /* New Preparation for a Professi... */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineSmallIsCustom,
                              ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'gj5h7nnm' /* Task Type */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
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
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    focusBorderColor: FlutterFlowTheme.of(context).primary,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
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
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                      ),
                      TextFormField(
                        controller: _model.companyNameInputTextController,
                        focusNode: _model.companyNameInputFocusNode,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        minLines: 1,
                        validator: _model
                            .companyNameInputTextControllerValidator
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
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                      ),
                      TextFormField(
                        controller: _model.extraDetailsInputTextController,
                        focusNode: _model.extraDetailsInputFocusNode,
                        autofocus: false,
                        textInputAction: TextInputAction.done,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        maxLines: 7,
                        minLines: 5,
                        keyboardType: TextInputType.multiline,
                        validator: _model
                            .extraDetailsInputTextControllerValidator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'PROFESSIONAL_PREP_INPUTS_CANCEL_BTN_ON_T');
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            'yov374ko' /* Cancel */,
                          ),
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            height: MediaQuery.sizeOf(context).height * 0.075,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
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
                                  _model.extraDetailsInputTextController.text,
                                  valueOrDefault(
                                      currentUserDocument?.careerInterest, '')),
                              pdfUrl: valueOrDefault(
                                  currentUserDocument?.resume, ''),
                              threadId: 'responseID',
                              agentCloudFunctionName: 'aIResponseAgent',
                              provider: 'GOOGLE',
                              agentJson:
                                  '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"aIResponseAgent\",\"key\":\"po24k\"},\"name\":\"AI Response Agent\",\"description\":\"This AI agent is for responding to users with what they prompt for, typically relating to company information, interview/meeting preparation, questions to ask during an interview/meeting.\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-flash\",\"parameters\":{\"temperature\":{\"inputValue\":1},\"maxTokens\":{\"inputValue\":65535},\"topP\":{\"inputValue\":0.95}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"You are an AI Assistant for LinkUp, an app that helps people prepare in the professional world offering things like company research, interview and networking prep, which will be done by you. \\n\\nYour role is to return a JSON response to a given prompt, typically relating to company information, interview/meeting preparation, networking event preparation questions to ask during an interview/meeting. You will also be given a PDF file which is the user\'s resume, which you can analyze to create responses for the given circumstance. If the PDF does not look like a resume, please ignore it as the user did not follow proper instructions, and respond to the best of your ability still.\\n\\nThe JSON response format should look like this:\\n\\n{\\n\\\"type\\\": \\\"string\\\"\\n\\\"short_description\\\": \\\"string\\\"\\n\\\"response\\\": \\\"string\\\"\\n}\\n\\n\\\"type\\\" should either be Company Information, Interview/Meeting Preparation, Ask Interview/Meeting Questions, or Networking Event Preparation. \\\"short_description\\\" should be a very short description (4 words or less) summarizing the response to use as a header. \\\"response\\\" should just be the response in text for the given prompt.\\n\\nThe user will ask a question of one of those types, and you should respond in a detailed response. If the question type if Company Information, use the deep research skill to do as much research as possible.\"}]},\"requestOptions\":{\"requestTypes\":[\"PLAINTEXT\",\"PDF\"]},\"responseOptions\":{\"responseType\":\"JSON\"}}',
                              responseType: 'JSON',
                            ).then((generatedText) {
                              safeSetState(
                                  () => _model.aiResponse = generatedText);
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
                                  time: getCurrentTimestamp,
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
                                    'Company_Information':
                                        FieldValue.increment(1),
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
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            height: MediaQuery.sizeOf(context).height * 0.075,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
