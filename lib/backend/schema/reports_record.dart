import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoryReport" field.
  String? _categoryReport;
  String get categoryReport => _categoryReport ?? '';
  bool hasCategoryReport() => _categoryReport != null;

  // "problemDescription" field.
  String? _problemDescription;
  String get problemDescription => _problemDescription ?? '';
  bool hasProblemDescription() => _problemDescription != null;

  void _initializeFields() {
    _categoryReport = snapshotData['categoryReport'] as String?;
    _problemDescription = snapshotData['problemDescription'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? categoryReport,
  String? problemDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoryReport': categoryReport,
      'problemDescription': problemDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.categoryReport == e2?.categoryReport &&
        e1?.problemDescription == e2?.problemDescription;
  }

  @override
  int hash(ReportsRecord? e) =>
      const ListEquality().hash([e?.categoryReport, e?.problemDescription]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
