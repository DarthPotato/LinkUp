// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AIPromptTypeCountStruct extends FFFirebaseStruct {
  AIPromptTypeCountStruct({
    int? companyInformation,
    int? interviewMeetingPreparation,
    int? askInterviewMeetingQuestions,
    int? email,
    int? networkingPreparation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _companyInformation = companyInformation,
        _interviewMeetingPreparation = interviewMeetingPreparation,
        _askInterviewMeetingQuestions = askInterviewMeetingQuestions,
        _email = email,
        _networkingPreparation = networkingPreparation,
        super(firestoreUtilData);

  // "Company_Information" field.
  int? _companyInformation;
  int get companyInformation => _companyInformation ?? 0;
  set companyInformation(int? val) => _companyInformation = val;

  void incrementCompanyInformation(int amount) =>
      companyInformation = companyInformation + amount;

  bool hasCompanyInformation() => _companyInformation != null;

  // "Interview_Meeting_Preparation" field.
  int? _interviewMeetingPreparation;
  int get interviewMeetingPreparation => _interviewMeetingPreparation ?? 0;
  set interviewMeetingPreparation(int? val) =>
      _interviewMeetingPreparation = val;

  void incrementInterviewMeetingPreparation(int amount) =>
      interviewMeetingPreparation = interviewMeetingPreparation + amount;

  bool hasInterviewMeetingPreparation() => _interviewMeetingPreparation != null;

  // "Ask_Interview_Meeting_Questions" field.
  int? _askInterviewMeetingQuestions;
  int get askInterviewMeetingQuestions => _askInterviewMeetingQuestions ?? 0;
  set askInterviewMeetingQuestions(int? val) =>
      _askInterviewMeetingQuestions = val;

  void incrementAskInterviewMeetingQuestions(int amount) =>
      askInterviewMeetingQuestions = askInterviewMeetingQuestions + amount;

  bool hasAskInterviewMeetingQuestions() =>
      _askInterviewMeetingQuestions != null;

  // "Email" field.
  int? _email;
  int get email => _email ?? 0;
  set email(int? val) => _email = val;

  void incrementEmail(int amount) => email = email + amount;

  bool hasEmail() => _email != null;

  // "Networking_Preparation" field.
  int? _networkingPreparation;
  int get networkingPreparation => _networkingPreparation ?? 0;
  set networkingPreparation(int? val) => _networkingPreparation = val;

  void incrementNetworkingPreparation(int amount) =>
      networkingPreparation = networkingPreparation + amount;

  bool hasNetworkingPreparation() => _networkingPreparation != null;

  static AIPromptTypeCountStruct fromMap(Map<String, dynamic> data) =>
      AIPromptTypeCountStruct(
        companyInformation: castToType<int>(data['Company_Information']),
        interviewMeetingPreparation:
            castToType<int>(data['Interview_Meeting_Preparation']),
        askInterviewMeetingQuestions:
            castToType<int>(data['Ask_Interview_Meeting_Questions']),
        email: castToType<int>(data['Email']),
        networkingPreparation: castToType<int>(data['Networking_Preparation']),
      );

  static AIPromptTypeCountStruct? maybeFromMap(dynamic data) => data is Map
      ? AIPromptTypeCountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Company_Information': _companyInformation,
        'Interview_Meeting_Preparation': _interviewMeetingPreparation,
        'Ask_Interview_Meeting_Questions': _askInterviewMeetingQuestions,
        'Email': _email,
        'Networking_Preparation': _networkingPreparation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Company_Information': serializeParam(
          _companyInformation,
          ParamType.int,
        ),
        'Interview_Meeting_Preparation': serializeParam(
          _interviewMeetingPreparation,
          ParamType.int,
        ),
        'Ask_Interview_Meeting_Questions': serializeParam(
          _askInterviewMeetingQuestions,
          ParamType.int,
        ),
        'Email': serializeParam(
          _email,
          ParamType.int,
        ),
        'Networking_Preparation': serializeParam(
          _networkingPreparation,
          ParamType.int,
        ),
      }.withoutNulls;

  static AIPromptTypeCountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AIPromptTypeCountStruct(
        companyInformation: deserializeParam(
          data['Company_Information'],
          ParamType.int,
          false,
        ),
        interviewMeetingPreparation: deserializeParam(
          data['Interview_Meeting_Preparation'],
          ParamType.int,
          false,
        ),
        askInterviewMeetingQuestions: deserializeParam(
          data['Ask_Interview_Meeting_Questions'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.int,
          false,
        ),
        networkingPreparation: deserializeParam(
          data['Networking_Preparation'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AIPromptTypeCountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIPromptTypeCountStruct &&
        companyInformation == other.companyInformation &&
        interviewMeetingPreparation == other.interviewMeetingPreparation &&
        askInterviewMeetingQuestions == other.askInterviewMeetingQuestions &&
        email == other.email &&
        networkingPreparation == other.networkingPreparation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        companyInformation,
        interviewMeetingPreparation,
        askInterviewMeetingQuestions,
        email,
        networkingPreparation
      ]);
}

AIPromptTypeCountStruct createAIPromptTypeCountStruct({
  int? companyInformation,
  int? interviewMeetingPreparation,
  int? askInterviewMeetingQuestions,
  int? email,
  int? networkingPreparation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AIPromptTypeCountStruct(
      companyInformation: companyInformation,
      interviewMeetingPreparation: interviewMeetingPreparation,
      askInterviewMeetingQuestions: askInterviewMeetingQuestions,
      email: email,
      networkingPreparation: networkingPreparation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AIPromptTypeCountStruct? updateAIPromptTypeCountStruct(
  AIPromptTypeCountStruct? aIPromptTypeCount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aIPromptTypeCount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAIPromptTypeCountStructData(
  Map<String, dynamic> firestoreData,
  AIPromptTypeCountStruct? aIPromptTypeCount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aIPromptTypeCount == null) {
    return;
  }
  if (aIPromptTypeCount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aIPromptTypeCount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aIPromptTypeCountData =
      getAIPromptTypeCountFirestoreData(aIPromptTypeCount, forFieldValue);
  final nestedData =
      aIPromptTypeCountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aIPromptTypeCount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAIPromptTypeCountFirestoreData(
  AIPromptTypeCountStruct? aIPromptTypeCount, [
  bool forFieldValue = false,
]) {
  if (aIPromptTypeCount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aIPromptTypeCount.toMap());

  // Add any Firestore field values
  mapToFirestore(aIPromptTypeCount.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAIPromptTypeCountListFirestoreData(
  List<AIPromptTypeCountStruct>? aIPromptTypeCounts,
) =>
    aIPromptTypeCounts
        ?.map((e) => getAIPromptTypeCountFirestoreData(e, true))
        .toList() ??
    [];
