import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CareerRecord extends FirestoreRecord {
  CareerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "popular" field.
  String? _popular;
  String get popular => _popular ?? '';
  bool hasPopular() => _popular != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _popular = snapshotData['popular'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('career');

  static Stream<CareerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CareerRecord.fromSnapshot(s));

  static Future<CareerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CareerRecord.fromSnapshot(s));

  static CareerRecord fromSnapshot(DocumentSnapshot snapshot) => CareerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CareerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CareerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CareerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CareerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCareerRecordData({
  String? name,
  String? popular,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'popular': popular,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CareerRecordDocumentEquality implements Equality<CareerRecord> {
  const CareerRecordDocumentEquality();

  @override
  bool equals(CareerRecord? e1, CareerRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.popular == e2?.popular &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CareerRecord? e) =>
      const ListEquality().hash([e?.name, e?.popular, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is CareerRecord;
}
