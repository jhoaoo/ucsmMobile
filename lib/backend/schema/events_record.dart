import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tittle" field.
  String? _tittle;
  String get tittle => _tittle ?? '';
  bool hasTittle() => _tittle != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "nameEvent" field.
  String? _nameEvent;
  String get nameEvent => _nameEvent ?? '';
  bool hasNameEvent() => _nameEvent != null;

  // "nameEntrepreneurship" field.
  String? _nameEntrepreneurship;
  String get nameEntrepreneurship => _nameEntrepreneurship ?? '';
  bool hasNameEntrepreneurship() => _nameEntrepreneurship != null;

  // "isEvent" field.
  bool? _isEvent;
  bool get isEvent => _isEvent ?? false;
  bool hasIsEvent() => _isEvent != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "popular" field.
  int? _popular;
  int get popular => _popular ?? 0;
  bool hasPopular() => _popular != null;

  void _initializeFields() {
    _tittle = snapshotData['tittle'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _nameEvent = snapshotData['nameEvent'] as String?;
    _nameEntrepreneurship = snapshotData['nameEntrepreneurship'] as String?;
    _isEvent = snapshotData['isEvent'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _popular = castToType<int>(snapshotData['popular']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? tittle,
  String? description,
  String? image,
  String? nameEvent,
  String? nameEntrepreneurship,
  bool? isEvent,
  DateTime? createdAt,
  int? popular,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tittle': tittle,
      'description': description,
      'image': image,
      'nameEvent': nameEvent,
      'nameEntrepreneurship': nameEntrepreneurship,
      'isEvent': isEvent,
      'createdAt': createdAt,
      'popular': popular,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.tittle == e2?.tittle &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.nameEvent == e2?.nameEvent &&
        e1?.nameEntrepreneurship == e2?.nameEntrepreneurship &&
        e1?.isEvent == e2?.isEvent &&
        e1?.createdAt == e2?.createdAt &&
        e1?.popular == e2?.popular;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.tittle,
        e?.description,
        e?.image,
        e?.nameEvent,
        e?.nameEntrepreneurship,
        e?.isEvent,
        e?.createdAt,
        e?.popular
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
