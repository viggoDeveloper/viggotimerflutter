import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeUserRecord extends FirestoreRecord {
  TimeUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idUser" field.
  DocumentReference? _idUser;
  DocumentReference? get idUser => _idUser;
  bool hasIdUser() => _idUser != null;

  // "timetype" field.
  String? _timetype;
  String get timetype => _timetype ?? '';
  bool hasTimetype() => _timetype != null;

  // "photoCheck" field.
  String? _photoCheck;
  String get photoCheck => _photoCheck ?? '';
  bool hasPhotoCheck() => _photoCheck != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "hour" field.
  DateTime? _hour;
  DateTime? get hour => _hour;
  bool hasHour() => _hour != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "post" field.
  String? _post;
  String get post => _post ?? '';
  bool hasPost() => _post != null;

  // "campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _idUser = snapshotData['idUser'] as DocumentReference?;
    _timetype = snapshotData['timetype'] as String?;
    _photoCheck = snapshotData['photoCheck'] as String?;
    _reason = snapshotData['reason'] as String?;
    _hour = snapshotData['hour'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _post = snapshotData['post'] as String?;
    _campus = snapshotData['campus'] as String?;
    _brand = snapshotData['brand'] as String?;
    _document = snapshotData['document'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _city = snapshotData['city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('timeUser');

  static Stream<TimeUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimeUserRecord.fromSnapshot(s));

  static Future<TimeUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimeUserRecord.fromSnapshot(s));

  static TimeUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimeUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimeUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimeUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimeUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimeUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimeUserRecordData({
  DocumentReference? idUser,
  String? timetype,
  String? photoCheck,
  String? reason,
  DateTime? hour,
  String? name,
  String? lastname,
  String? phone,
  String? email,
  String? post,
  String? campus,
  String? brand,
  String? document,
  LatLng? location,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idUser': idUser,
      'timetype': timetype,
      'photoCheck': photoCheck,
      'reason': reason,
      'hour': hour,
      'name': name,
      'lastname': lastname,
      'phone': phone,
      'email': email,
      'post': post,
      'campus': campus,
      'brand': brand,
      'document': document,
      'location': location,
      'city': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimeUserRecordDocumentEquality implements Equality<TimeUserRecord> {
  const TimeUserRecordDocumentEquality();

  @override
  bool equals(TimeUserRecord? e1, TimeUserRecord? e2) {
    return e1?.idUser == e2?.idUser &&
        e1?.timetype == e2?.timetype &&
        e1?.photoCheck == e2?.photoCheck &&
        e1?.reason == e2?.reason &&
        e1?.hour == e2?.hour &&
        e1?.name == e2?.name &&
        e1?.lastname == e2?.lastname &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.post == e2?.post &&
        e1?.campus == e2?.campus &&
        e1?.brand == e2?.brand &&
        e1?.document == e2?.document &&
        e1?.location == e2?.location &&
        e1?.city == e2?.city;
  }

  @override
  int hash(TimeUserRecord? e) => const ListEquality().hash([
        e?.idUser,
        e?.timetype,
        e?.photoCheck,
        e?.reason,
        e?.hour,
        e?.name,
        e?.lastname,
        e?.phone,
        e?.email,
        e?.post,
        e?.campus,
        e?.brand,
        e?.document,
        e?.location,
        e?.city
      ]);

  @override
  bool isValidKey(Object? o) => o is TimeUserRecord;
}
