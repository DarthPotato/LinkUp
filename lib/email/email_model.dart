import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_widget.dart' show EmailWidget;
import 'package:flutter/material.dart';

class EmailModel extends FlutterFlowModel<EmailWidget> {
  ///  Local state fields for this page.

  String allowedType = 'Email';

  String? searchText;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Email widget.
  MetricsPersonalRecord? metricsPersonalDoc;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  MetricsPersonalRecord? metricsPersonalDocNew;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
