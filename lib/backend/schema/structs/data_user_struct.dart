// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataUserStruct extends FFFirebaseStruct {
  DataUserStruct({
    String? id,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static DataUserStruct fromMap(Map<String, dynamic> data) => DataUserStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
      );

  static DataUserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DataUserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataUserStruct && id == other.id && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name]);
}

DataUserStruct createDataUserStruct({
  String? id,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataUserStruct(
      id: id,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataUserStruct? updateDataUserStruct(
  DataUserStruct? dataUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dataUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataUserStructData(
  Map<String, dynamic> firestoreData,
  DataUserStruct? dataUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataUser == null) {
    return;
  }
  if (dataUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dataUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataUserData = getDataUserFirestoreData(dataUser, forFieldValue);
  final nestedData = dataUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dataUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataUserFirestoreData(
  DataUserStruct? dataUser, [
  bool forFieldValue = false,
]) {
  if (dataUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dataUser.toMap());

  // Add any Firestore field values
  dataUser.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataUserListFirestoreData(
  List<DataUserStruct>? dataUsers,
) =>
    dataUsers?.map((e) => getDataUserFirestoreData(e, true)).toList() ?? [];
