import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponsesRecord extends FirestoreRecord {
  ResponsesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  bool hasResponse() => _response != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _shortDescription = snapshotData['short_description'] as String?;
    _response = snapshotData['response'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('responses');

  static Stream<ResponsesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResponsesRecord.fromSnapshot(s));

  static Future<ResponsesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResponsesRecord.fromSnapshot(s));

  static ResponsesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResponsesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResponsesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResponsesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResponsesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResponsesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResponsesRecordData({
  String? type,
  String? shortDescription,
  String? response,
  DocumentReference? user,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'short_description': shortDescription,
      'response': response,
      'user': user,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResponsesRecordDocumentEquality implements Equality<ResponsesRecord> {
  const ResponsesRecordDocumentEquality();

  @override
  bool equals(ResponsesRecord? e1, ResponsesRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.response == e2?.response &&
        e1?.user == e2?.user &&
        e1?.time == e2?.time;
  }

  @override
  int hash(ResponsesRecord? e) => const ListEquality()
      .hash([e?.type, e?.shortDescription, e?.response, e?.user, e?.time]);

  @override
  bool isValidKey(Object? o) => o is ResponsesRecord;
}
