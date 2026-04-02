import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetricsPersonalRecord extends FirestoreRecord {
  MetricsPersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "adoption_flag" field.
  int? _adoptionFlag;
  int get adoptionFlag => _adoptionFlag ?? 0;
  bool hasAdoptionFlag() => _adoptionFlag != null;

  // "active_today" field.
  int? _activeToday;
  int get activeToday => _activeToday ?? 0;
  bool hasActiveToday() => _activeToday != null;

  // "first_active" field.
  DateTime? _firstActive;
  DateTime? get firstActive => _firstActive;
  bool hasFirstActive() => _firstActive != null;

  // "last_active" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "clicks" field.
  int? _clicks;
  int get clicks => _clicks ?? 0;
  bool hasClicks() => _clicks != null;

  // "impressions" field.
  int? _impressions;
  int get impressions => _impressions ?? 0;
  bool hasImpressions() => _impressions != null;

  // "ai_counts" field.
  AIPromptTypeCountStruct? _aiCounts;
  AIPromptTypeCountStruct get aiCounts =>
      _aiCounts ?? AIPromptTypeCountStruct();
  bool hasAiCounts() => _aiCounts != null;

  // "logins" field.
  int? _logins;
  int get logins => _logins ?? 0;
  bool hasLogins() => _logins != null;

  // "nps_score" field.
  double? _npsScore;
  double get npsScore => _npsScore ?? 0.0;
  bool hasNpsScore() => _npsScore != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _adoptionFlag = castToType<int>(snapshotData['adoption_flag']);
    _activeToday = castToType<int>(snapshotData['active_today']);
    _firstActive = snapshotData['first_active'] as DateTime?;
    _lastActive = snapshotData['last_active'] as DateTime?;
    _clicks = castToType<int>(snapshotData['clicks']);
    _impressions = castToType<int>(snapshotData['impressions']);
    _aiCounts = snapshotData['ai_counts'] is AIPromptTypeCountStruct
        ? snapshotData['ai_counts']
        : AIPromptTypeCountStruct.maybeFromMap(snapshotData['ai_counts']);
    _logins = castToType<int>(snapshotData['logins']);
    _npsScore = castToType<double>(snapshotData['nps_score']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metrics_personal');

  static Stream<MetricsPersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetricsPersonalRecord.fromSnapshot(s));

  static Future<MetricsPersonalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetricsPersonalRecord.fromSnapshot(s));

  static MetricsPersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetricsPersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetricsPersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetricsPersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetricsPersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetricsPersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetricsPersonalRecordData({
  DocumentReference? user,
  int? adoptionFlag,
  int? activeToday,
  DateTime? firstActive,
  DateTime? lastActive,
  int? clicks,
  int? impressions,
  AIPromptTypeCountStruct? aiCounts,
  int? logins,
  double? npsScore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'adoption_flag': adoptionFlag,
      'active_today': activeToday,
      'first_active': firstActive,
      'last_active': lastActive,
      'clicks': clicks,
      'impressions': impressions,
      'ai_counts': AIPromptTypeCountStruct().toMap(),
      'logins': logins,
      'nps_score': npsScore,
    }.withoutNulls,
  );

  // Handle nested data for "ai_counts" field.
  addAIPromptTypeCountStructData(firestoreData, aiCounts, 'ai_counts');

  return firestoreData;
}

class MetricsPersonalRecordDocumentEquality
    implements Equality<MetricsPersonalRecord> {
  const MetricsPersonalRecordDocumentEquality();

  @override
  bool equals(MetricsPersonalRecord? e1, MetricsPersonalRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.adoptionFlag == e2?.adoptionFlag &&
        e1?.activeToday == e2?.activeToday &&
        e1?.firstActive == e2?.firstActive &&
        e1?.lastActive == e2?.lastActive &&
        e1?.clicks == e2?.clicks &&
        e1?.impressions == e2?.impressions &&
        e1?.aiCounts == e2?.aiCounts &&
        e1?.logins == e2?.logins &&
        e1?.npsScore == e2?.npsScore;
  }

  @override
  int hash(MetricsPersonalRecord? e) => const ListEquality().hash([
        e?.user,
        e?.adoptionFlag,
        e?.activeToday,
        e?.firstActive,
        e?.lastActive,
        e?.clicks,
        e?.impressions,
        e?.aiCounts,
        e?.logins,
        e?.npsScore
      ]);

  @override
  bool isValidKey(Object? o) => o is MetricsPersonalRecord;
}
