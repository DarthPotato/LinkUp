import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/email_prep_inputs_widget.dart';
import '/components/professionals_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'email_model.dart';
export 'email_model.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key});

  static String routeName = 'Email';
  static String routePath = '/email';

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  late EmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Email'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('EMAIL_PAGE_Email_ON_INIT_STATE');
      logFirebaseEvent('Email_firestore_query');
      _model.metricsPersonalDoc = await queryMetricsPersonalRecordOnce(
        queryBuilder: (metricsPersonalRecord) => metricsPersonalRecord.where(
          'user',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      logFirebaseEvent('Email_backend_call');

      await _model.metricsPersonalDoc!.reference.update({
        ...mapToFirestore(
          {
            'impressions': FieldValue.increment(1),
          },
        ),
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 400.0,
            ),
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFF9AD1D4),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'EMAIL_PAGE_arrow_back_ICN_ON_TAP');
                                    logFirebaseEvent('IconButton_navigate_to');

                                    context.goNamed(AiPageWidget.routeName);
                                  },
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'o056gm9p' /* Email Prep */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        fontSize: 28.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 16.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    logFirebaseEvent(
                                        'EMAIL_TextField_vua5yd89_ON_TEXTFIELD_CH');
                                    logFirebaseEvent(
                                        'TextField_update_page_state');
                                    _model.searchText =
                                        _model.textController.text;
                                    safeSetState(() {});
                                  },
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: FFLocalizations.of(context).getText(
                                    'p7jhea1b' /* Search email prep... */,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  prefixIcon: Icon(
                                    Icons.search_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                ),
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          StreamBuilder<List<ResponsesRecord>>(
                            stream: queryResponsesRecord(
                              queryBuilder: (responsesRecord) => responsesRecord
                                  .where(
                                    'user',
                                    isEqualTo: currentUserReference,
                                  )
                                  .where(
                                    'type',
                                    isEqualTo: _model.allowedType != ''
                                        ? _model.allowedType
                                        : null,
                                  )
                                  .where(
                                    'short_description',
                                    isEqualTo: _model.searchText != ''
                                        ? _model.searchText
                                        : null,
                                  )
                                  .orderBy('time', descending: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ResponsesRecord>
                                  listViewResponsesRecordList = snapshot.data!;

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewResponsesRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 12.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewResponsesRecord =
                                      listViewResponsesRecordList[
                                          listViewIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EMAIL_PAGE_Container_kkarqoer_ON_TAP');
                                      logFirebaseEvent(
                                          'Professionals_navigate_to');

                                      context.goNamed(
                                        ExpandedEmailWidget.routeName,
                                        queryParameters: {
                                          'responseDoc': serializeParam(
                                            listViewResponsesRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'responseDoc':
                                              listViewResponsesRecord,
                                        },
                                      );
                                    },
                                    child: ProfessionalsWidget(
                                      key: Key(
                                          'Keykka_${listViewIndex}_of_${listViewResponsesRecordList.length}'),
                                      responsesDoc: listViewResponsesRecord,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.15, 0.99),
                      child: FlutterFlowIconButton(
                        key: ValueKey('IconButton_5qm8'),
                        borderColor: Colors.transparent,
                        borderRadius: 32.0,
                        buttonSize: 64.0,
                        fillColor: Color(0xFFC2F9BB),
                        icon: Icon(
                          Icons.add_rounded,
                          color: Colors.white,
                          size: 32.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent('EMAIL_PAGE_add_rounded_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_firestore_query');
                          _model.metricsPersonalDocNew =
                              await queryMetricsPersonalRecordOnce(
                            queryBuilder: (metricsPersonalRecord) =>
                                metricsPersonalRecord.where(
                              'user',
                              isEqualTo: currentUserReference,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          logFirebaseEvent('IconButton_backend_call');

                          await _model.metricsPersonalDocNew!.reference.update({
                            ...mapToFirestore(
                              {
                                'clicks': FieldValue.increment(1),
                              },
                            ),
                          });
                          logFirebaseEvent('IconButton_bottom_sheet');
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.67,
                                    child: EmailPrepInputsWidget(),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          safeSetState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
