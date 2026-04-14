import '/auth/firebase_auth/auth_util.dart';
import '/backend/ai_agents/ai_agent.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'email_prep_inputs_model.dart';
export 'email_prep_inputs_model.dart';

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
class EmailPrepInputsWidget extends StatefulWidget {
  const EmailPrepInputsWidget({super.key});

  @override
  State<EmailPrepInputsWidget> createState() => _EmailPrepInputsWidgetState();
}

class _EmailPrepInputsWidgetState extends State<EmailPrepInputsWidget> {
  late EmailPrepInputsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailPrepInputsModel());

    _model.personNameInputTextController ??= TextEditingController();
    _model.personNameInputFocusNode ??= FocusNode();

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
      width: 400.0,
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
                'sxeoegaa' /* New Preparation for an Email */,
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
                    'sc54e8lr' /* Person Name */,
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
                  controller: _model.personNameInputTextController,
                  focusNode: _model.personNameInputFocusNode,
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
                  validator: _model.personNameInputTextControllerValidator
                      .asValidator(context),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'h3flrh12' /* Company Name */,
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
                    'i8wqswhs' /* Extra Details */,
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
                    'hapdldz9' /* Cancel */,
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
                        'EMAIL_PREP_INPUTS_COMP_SUBMIT_BTN_ON_TAP');
                    logFirebaseEvent('Button_a_i_agent');
                    await callAiAgent(
                      context: context,
                      prompt: functions.generateEmailPrompt(
                          _model.personNameInputTextController.text,
                          _model.companyNameInputTextController.text,
                          _model.extraDetailsInputTextController.text,
                          currentUserDisplayName),
                      pdfUrl: valueOrDefault(currentUserDocument?.resume, ''),
                      threadId: 'responseID2',
                      agentCloudFunctionName: 'aIEmailAgent',
                      provider: 'GOOGLE',
                      agentJson:
                          '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"aIEmailAgent\",\"key\":\"89bz6\"},\"name\":\"AI Email Agent\",\"description\":\"This AI agent is for responding to users with what they prompt for, typically relating to drafting emails.\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-flash\",\"parameters\":{\"temperature\":{\"inputValue\":1},\"maxTokens\":{\"inputValue\":65535},\"topP\":{\"inputValue\":0.95}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"You are an AI Assistant for LinkUp, an app that helps people prepare in the professional world offering email drafting.\\n\\nYour role is to return a JSON response to a given prompt, typically relating to drafting emails. You will also be given a PDF file which is the user\'s resume, which you can analyze to create responses for the given circumstance. If the PDF does not look like a resume, please ignore it as the user did not follow proper instructions, and respond to the best of your ability still.\\n\\nThe JSON response format should look like this:\\n\\n{\\n\\\"type\\\": \\\"Email\\\"\\n\\\"short_description\\\": \\\"string\\\"\\n\\\"response\\\": \\\"string\\\"\\n}\\n\\n\\\"type\\\" is always Email. \\\"short_description\\\" should be a very short description (5 words or less) summarizing the response to use as a header. \\\"response\\\" should just be the email in text for the given prompt.\\n\\nYou should respond in a detailed response in proper email format with a greeting, a body, and a send off with signature.\"}]},\"requestOptions\":{\"requestTypes\":[\"PLAINTEXT\",\"PDF\"]},\"responseOptions\":{\"responseType\":\"JSON\"}}',
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
                    logFirebaseEvent('Button_backend_call');

                    await _model.metricsPersonalDoc!.reference
                        .update(createMetricsPersonalRecordData(
                      aiCounts: createAIPromptTypeCountStruct(
                        fieldValues: {
                          'Email': FieldValue.increment(1),
                        },
                        clearUnsetFields: false,
                      ),
                      adoptionFlag: 1,
                    ));
                    logFirebaseEvent('Button_rebuild_component');
                    _model.updatePage(() {});
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'knhvhmr9' /* Submit */,
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
