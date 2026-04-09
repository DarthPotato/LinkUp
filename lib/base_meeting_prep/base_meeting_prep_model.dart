import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'base_meeting_prep_widget.dart' show BaseMeetingPrepWidget;
import 'package:flutter/material.dart';

class BaseMeetingPrepModel extends FlutterFlowModel<BaseMeetingPrepWidget> {
  ///  Local state fields for this page.

  List<String> allowedTypes = [
    'Company Information',
    'Interview/Meeting Preparation',
    'Ask Interview/Meeting Questions',
    'Networking Event Preparation'
  ];
  void addToAllowedTypes(String item) => allowedTypes.add(item);
  void removeFromAllowedTypes(String item) => allowedTypes.remove(item);
  void removeAtIndexFromAllowedTypes(int index) => allowedTypes.removeAt(index);
  void insertAtIndexInAllowedTypes(int index, String item) =>
      allowedTypes.insert(index, item);
  void updateAllowedTypesAtIndex(int index, Function(String) updateFn) =>
      allowedTypes[index] = updateFn(allowedTypes[index]);

  String? searchText;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Base_Meeting_Prep widget.
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
