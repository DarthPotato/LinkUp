import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'n_p_s_question_widget.dart' show NPSQuestionWidget;
import 'package:flutter/material.dart';

class NPSQuestionModel extends FlutterFlowModel<NPSQuestionWidget> {
  ///  Local state fields for this page.

  double npsSliderValue = 5.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MetricsPersonalRecord? metricsPersonalDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
