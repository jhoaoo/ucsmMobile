import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SemesterRecord extends FirestoreRecord {
  SemesterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refCarrer" field.
  DocumentReference? _refCarrer;
  DocumentReference? get refCarrer => _refCarrer;
  bool hasRefCarrer() => _refCarrer != null;

  // "cycle" field.
  int? _cycle;
  int get cycle => _cycle ?? 0;
  bool hasCycle() => _cycle != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  void _initializeFields() {
    _refCarrer = snapshotData['refCarrer'] as DocumentReference?;
    _cycle = castToType<int>(snapshotData['cycle']);
    _age = castToType<int>(snapshotData['age']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('semester');

  static Stream<SemesterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SemesterRecord.fromSnapshot(s));

  static Future<SemesterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SemesterRecord.fromSnapshot(s));

  static SemesterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SemesterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SemesterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SemesterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SemesterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SemesterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSemesterRecordData({
  DocumentReference? refCarrer,
  int? cycle,
  int? age,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refCarrer': refCarrer,
      'cycle': cycle,
      'age': age,
    }.withoutNulls,
  );

  return firestoreData;
}

class SemesterRecordDocumentEquality implements Equality<SemesterRecord> {
  const SemesterRecordDocumentEquality();

  @override
  bool equals(SemesterRecord? e1, SemesterRecord? e2) {
    return e1?.refCarrer == e2?.refCarrer &&
        e1?.cycle == e2?.cycle &&
        e1?.age == e2?.age;
  }

  @override
  int hash(SemesterRecord? e) =>
      const ListEquality().hash([e?.refCarrer, e?.cycle, e?.age]);

  @override
  bool isValidKey(Object? o) => o is SemesterRecord;
}
