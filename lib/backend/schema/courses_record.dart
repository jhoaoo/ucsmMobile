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

  // "semester" field.
  String? _semester;
  String get semester => _semester ?? '';
  bool hasSemester() => _semester != null;

  // "careerName" field.
  String? _careerName;
  String get careerName => _careerName ?? '';
  bool hasCareerName() => _careerName != null;

  // "webRecurse" field.
  String? _webRecurse;
  String get webRecurse => _webRecurse ?? '';
  bool hasWebRecurse() => _webRecurse != null;

  // "documentPDF" field.
  String? _documentPDF;
  String get documentPDF => _documentPDF ?? '';
  bool hasDocumentPDF() => _documentPDF != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _autorName = snapshotData['autorName'] as String?;
    _fileName = snapshotData['fileName'] as String?;
    _ageDocument = snapshotData['ageDocument'] as DateTime?;
    _courseName = snapshotData['courseName'] as String?;
    _semester = snapshotData['semester'] as String?;
    _careerName = snapshotData['careerName'] as String?;
    _webRecurse = snapshotData['webRecurse'] as String?;
    _documentPDF = snapshotData['documentPDF'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
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
  String? semester,
  String? careerName,
  String? webRecurse,
  String? documentPDF,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'autorName': autorName,
      'fileName': fileName,
      'ageDocument': ageDocument,
      'courseName': courseName,
      'semester': semester,
      'careerName': careerName,
      'webRecurse': webRecurse,
      'documentPDF': documentPDF,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.autorName == e2?.autorName &&
        e1?.fileName == e2?.fileName &&
        e1?.ageDocument == e2?.ageDocument &&
        e1?.courseName == e2?.courseName &&
        e1?.semester == e2?.semester &&
        e1?.careerName == e2?.careerName &&
        e1?.webRecurse == e2?.webRecurse &&
        e1?.documentPDF == e2?.documentPDF &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.autorName,
        e?.fileName,
        e?.ageDocument,
        e?.courseName,
        e?.semester,
        e?.careerName,
        e?.webRecurse,
        e?.documentPDF,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
