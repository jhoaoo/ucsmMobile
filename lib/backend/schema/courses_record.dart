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

  // "tests" field.
  List<String>? _tests;
  List<String> get tests => _tests ?? const [];
  bool hasTests() => _tests != null;

  // "autorName" field.
  String? _autorName;
  String get autorName => _autorName ?? '';
  bool hasAutorName() => _autorName != null;

  // "fileName" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  bool hasFileName() => _fileName != null;

  // "ageDocument" field.
  DateTime? _ageDocument;
  DateTime? get ageDocument => _ageDocument;
  bool hasAgeDocument() => _ageDocument != null;

  // "courseName" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tests = getDataList(snapshotData['tests']);
    _autorName = snapshotData['autorName'] as String?;
    _fileName = snapshotData['fileName'] as String?;
    _ageDocument = snapshotData['ageDocument'] as DateTime?;
    _courseName = snapshotData['courseName'] as String?;
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
  String? autorName,
  String? fileName,
  DateTime? ageDocument,
  String? courseName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'autorName': autorName,
      'fileName': fileName,
      'ageDocument': ageDocument,
      'courseName': courseName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.tests, e2?.tests) &&
        e1?.autorName == e2?.autorName &&
        e1?.fileName == e2?.fileName &&
        e1?.ageDocument == e2?.ageDocument &&
        e1?.courseName == e2?.courseName;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash(
      [e?.tests, e?.autorName, e?.fileName, e?.ageDocument, e?.courseName]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
