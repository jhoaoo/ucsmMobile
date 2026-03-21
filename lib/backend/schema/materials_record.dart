import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialsRecord extends FirestoreRecord {
  MaterialsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "facultad" field.
  String? _facultad;
  String get facultad => _facultad ?? '';
  bool hasFacultad() => _facultad != null;

  // "carrera" field.
  String? _carrera;
  String get carrera => _carrera ?? '';
  bool hasCarrera() => _carrera != null;

  // "areas" field.
  String? _areas;
  String get areas => _areas ?? '';
  bool hasAreas() => _areas != null;

  void _initializeFields() {
    _facultad = snapshotData['facultad'] as String?;
    _carrera = snapshotData['carrera'] as String?;
    _areas = snapshotData['areas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('materials');

  static Stream<MaterialsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialsRecord.fromSnapshot(s));

  static Future<MaterialsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialsRecord.fromSnapshot(s));

  static MaterialsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialsRecordData({
  String? facultad,
  String? carrera,
  String? areas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'facultad': facultad,
      'carrera': carrera,
      'areas': areas,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialsRecordDocumentEquality implements Equality<MaterialsRecord> {
  const MaterialsRecordDocumentEquality();

  @override
  bool equals(MaterialsRecord? e1, MaterialsRecord? e2) {
    return e1?.facultad == e2?.facultad &&
        e1?.carrera == e2?.carrera &&
        e1?.areas == e2?.areas;
  }

  @override
  int hash(MaterialsRecord? e) =>
      const ListEquality().hash([e?.facultad, e?.carrera, e?.areas]);

  @override
  bool isValidKey(Object? o) => o is MaterialsRecord;
}
