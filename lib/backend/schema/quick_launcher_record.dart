import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuickLauncherRecord extends FirestoreRecord {
  QuickLauncherRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "nameSite" field.
  String? _nameSite;
  String get nameSite => _nameSite ?? '';
  bool hasNameSite() => _nameSite != null;

  void _initializeFields() {
    _url = snapshotData['url'] as String?;
    _nameSite = snapshotData['nameSite'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quickLauncher');

  static Stream<QuickLauncherRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuickLauncherRecord.fromSnapshot(s));

  static Future<QuickLauncherRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuickLauncherRecord.fromSnapshot(s));

  static QuickLauncherRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuickLauncherRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuickLauncherRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuickLauncherRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuickLauncherRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuickLauncherRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuickLauncherRecordData({
  String? url,
  String? nameSite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'url': url,
      'nameSite': nameSite,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuickLauncherRecordDocumentEquality
    implements Equality<QuickLauncherRecord> {
  const QuickLauncherRecordDocumentEquality();

  @override
  bool equals(QuickLauncherRecord? e1, QuickLauncherRecord? e2) {
    return e1?.url == e2?.url && e1?.nameSite == e2?.nameSite;
  }

  @override
  int hash(QuickLauncherRecord? e) =>
      const ListEquality().hash([e?.url, e?.nameSite]);

  @override
  bool isValidKey(Object? o) => o is QuickLauncherRecord;
}
