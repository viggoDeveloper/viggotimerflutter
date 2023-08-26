import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  // "post" field.
  String? _post;
  String get post => _post ?? '';
  bool hasPost() => _post != null;

  // "userRol" field.
  String? _userRol;
  String get userRol => _userRol ?? '';
  bool hasUserRol() => _userRol != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "imageProfile" field.
  String? _imageProfile;
  String get imageProfile => _imageProfile ?? '';
  bool hasImageProfile() => _imageProfile != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _brand = snapshotData['brand'] as String?;
    _campus = snapshotData['campus'] as String?;
    _city = snapshotData['city'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _document = snapshotData['document'] as String?;
    _post = snapshotData['post'] as String?;
    _userRol = snapshotData['userRol'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _password = snapshotData['password'] as String?;
    _imageProfile = snapshotData['imageProfile'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? name,
  String? lastname,
  String? brand,
  String? campus,
  String? city,
  DateTime? createdTime,
  String? document,
  String? post,
  String? userRol,
  String? email,
  String? phone,
  String? password,
  String? imageProfile,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'lastname': lastname,
      'brand': brand,
      'campus': campus,
      'city': city,
      'created_time': createdTime,
      'document': document,
      'post': post,
      'userRol': userRol,
      'email': email,
      'phone': phone,
      'password': password,
      'imageProfile': imageProfile,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lastname == e2?.lastname &&
        e1?.brand == e2?.brand &&
        e1?.campus == e2?.campus &&
        e1?.city == e2?.city &&
        e1?.createdTime == e2?.createdTime &&
        e1?.document == e2?.document &&
        e1?.post == e2?.post &&
        e1?.userRol == e2?.userRol &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.password == e2?.password &&
        e1?.imageProfile == e2?.imageProfile &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lastname,
        e?.brand,
        e?.campus,
        e?.city,
        e?.createdTime,
        e?.document,
        e?.post,
        e?.userRol,
        e?.email,
        e?.phone,
        e?.password,
        e?.imageProfile,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
