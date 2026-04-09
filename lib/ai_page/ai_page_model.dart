import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ai_page_widget.dart' show AiPageWidget;
import 'package:flutter/material.dart';

class AiPageModel extends FlutterFlowModel<AiPageWidget> {
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

  String differentType = 'Email';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
