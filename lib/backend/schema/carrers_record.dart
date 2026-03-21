import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarrersRecord extends FirestoreRecord {
  CarrersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "faculty" field.
  String? _faculty;
  String get faculty => _faculty ?? '';
  bool hasFaculty() => _faculty != null;

  // "semester" field.
  int? _semester;
  int get semester => _semester ?? 0;
  bool hasSemester() => _semester != null;

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  bool hasCourse() => _course != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _faculty = snapshotData['faculty'] as String?;
    _semester = castToType<int>(snapshotData['semester']);
    _course = snapshotData['course'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrers');

  static Stream<CarrersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarrersRecord.fromSnapshot(s));

  static Future<CarrersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarrersRecord.fromSnapshot(s));

  static CarrersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarrersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarrersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarrersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarrersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarrersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarrersRecordData({
  DocumentReference? userRef,
  String? faculty,
  int? semester,
  String? course,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'faculty': faculty,
      'semester': semester,
      'course': course,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarrersRecordDocumentEquality implements Equality<CarrersRecord> {
  const CarrersRecordDocumentEquality();

  @override
  bool equals(CarrersRecord? e1, CarrersRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.faculty == e2?.faculty &&
        e1?.semester == e2?.semester &&
        e1?.course == e2?.course;
  }

  @override
  int hash(CarrersRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.faculty, e?.semester, e?.course]);

  @override
  bool isValidKey(Object? o) => o is CarrersRecord;
}
