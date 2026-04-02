import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetricsGlobalRecord extends FirestoreRecord {
  MetricsGlobalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NPS" field.
  double? _nps;
  double get nps => _nps ?? 0.0;
  bool hasNps() => _nps != null;

  // "Adoption" field.
  double? _adoption;
  double get adoption => _adoption ?? 0.0;
  bool hasAdoption() => _adoption != null;

  // "DAU" field.
  double? _dau;
  double get dau => _dau ?? 0.0;
  bool hasDau() => _dau != null;

  // "Retention" field.
  double? _retention;
  double get retention => _retention ?? 0.0;
  bool hasRetention() => _retention != null;

  // "CTR" field.
  double? _ctr;
  double get ctr => _ctr ?? 0.0;
  bool hasCtr() => _ctr != null;

  // "AI_Prompt_Type" field.
  AIPromptTypeCountStruct? _aIPromptType;
  AIPromptTypeCountStruct get aIPromptType =>
      _aIPromptType ?? AIPromptTypeCountStruct();
  bool hasAIPromptType() => _aIPromptType != null;

  void _initializeFields() {
    _nps = castToType<double>(snapshotData['NPS']);
    _adoption = castToType<double>(snapshotData['Adoption']);
    _dau = castToType<double>(snapshotData['DAU']);
    _retention = castToType<double>(snapshotData['Retention']);
    _ctr = castToType<double>(snapshotData['CTR']);
    _aIPromptType = snapshotData['AI_Prompt_Type'] is AIPromptTypeCountStruct
        ? snapshotData['AI_Prompt_Type']
        : AIPromptTypeCountStruct.maybeFromMap(snapshotData['AI_Prompt_Type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metrics_global');

  static Stream<MetricsGlobalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetricsGlobalRecord.fromSnapshot(s));

  static Future<MetricsGlobalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetricsGlobalRecord.fromSnapshot(s));

  static MetricsGlobalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetricsGlobalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetricsGlobalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetricsGlobalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetricsGlobalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetricsGlobalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetricsGlobalRecordData({
  double? nps,
  double? adoption,
  double? dau,
  double? retention,
  double? ctr,
  AIPromptTypeCountStruct? aIPromptType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NPS': nps,
      'Adoption': adoption,
      'DAU': dau,
      'Retention': retention,
      'CTR': ctr,
      'AI_Prompt_Type': AIPromptTypeCountStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "AI_Prompt_Type" field.
  addAIPromptTypeCountStructData(firestoreData, aIPromptType, 'AI_Prompt_Type');

  return firestoreData;
}

class MetricsGlobalRecordDocumentEquality
    implements Equality<MetricsGlobalRecord> {
  const MetricsGlobalRecordDocumentEquality();

  @override
  bool equals(MetricsGlobalRecord? e1, MetricsGlobalRecord? e2) {
    return e1?.nps == e2?.nps &&
        e1?.adoption == e2?.adoption &&
        e1?.dau == e2?.dau &&
        e1?.retention == e2?.retention &&
        e1?.ctr == e2?.ctr &&
        e1?.aIPromptType == e2?.aIPromptType;
  }

  @override
  int hash(MetricsGlobalRecord? e) => const ListEquality().hash(
      [e?.nps, e?.adoption, e?.dau, e?.retention, e?.ctr, e?.aIPromptType]);

  @override
  bool isValidKey(Object? o) => o is MetricsGlobalRecord;
}
