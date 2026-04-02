import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'professional_prep_inputs_widget.dart' show ProfessionalPrepInputsWidget;
import 'package:flutter/material.dart';

class ProfessionalPrepInputsModel
    extends FlutterFlowModel<ProfessionalPrepInputsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ProPrepDropDown widget.
  String? proPrepDropDownValue;
  FormFieldController<String>? proPrepDropDownValueController;
  // State field(s) for CompanyNameInput widget.
  FocusNode? companyNameInputFocusNode;
  TextEditingController? companyNameInputTextController;
  String? Function(BuildContext, String?)?
      companyNameInputTextControllerValidator;
  // State field(s) for ExtraDetailsInput widget.
  FocusNode? extraDetailsInputFocusNode;
  TextEditingController? extraDetailsInputTextController;
  String? Function(BuildContext, String?)?
      extraDetailsInputTextControllerValidator;
  // Stores action output result for [AI Agent - Send Message to AI Response Agent] action in Button widget.
  Map<String, dynamic>? aiResponse;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MetricsPersonalRecord? metricsPersonalDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    companyNameInputFocusNode?.dispose();
    companyNameInputTextController?.dispose();

    extraDetailsInputFocusNode?.dispose();
    extraDetailsInputTextController?.dispose();
  }
}
