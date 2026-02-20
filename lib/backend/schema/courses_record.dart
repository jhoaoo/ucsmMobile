import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "couseName" field.
  String? _couseName;
  String get couseName => _couseName ?? '';
  bool hasCouseName() => _couseName != null;

  // "tests" field.
  List<String>? _tests;
  List<String> get tests => _tests ?? const [];
  bool hasTests() => _tests != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _couseName = snapshotData['couseName'] as String?;
    _tests = getDataList(snapshotData['tests']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('courses')
          : FirebaseFirestore.instance.collectionGroup('courses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('courses').doc(id);

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? couseName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'couseName': couseName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.couseName == e2?.couseName &&
        listEquality.equals(e1?.tests, e2?.tests);
  }

  @override
  int hash(CoursesRecord? e) =>
      const ListEquality().hash([e?.couseName, e?.tests]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
