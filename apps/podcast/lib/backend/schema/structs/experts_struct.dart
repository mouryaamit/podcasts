// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpertsStruct extends BaseStruct {
  ExpertsStruct({
    String? profileImage,
    String? name,
  })  : _profileImage = profileImage,
        _name = name;

  // "profileImage" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  set profileImage(String? val) => _profileImage = val;

  bool hasProfileImage() => _profileImage != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ExpertsStruct fromMap(Map<String, dynamic> data) => ExpertsStruct(
        profileImage: data['profileImage'] as String?,
        name: data['name'] as String?,
      );

  static ExpertsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExpertsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'profileImage': _profileImage,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'profileImage': serializeParam(
          _profileImage,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExpertsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpertsStruct(
        profileImage: deserializeParam(
          data['profileImage'],
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
  String toString() => 'ExpertsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpertsStruct &&
        profileImage == other.profileImage &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([profileImage, name]);
}

ExpertsStruct createExpertsStruct({
  String? profileImage,
  String? name,
}) =>
    ExpertsStruct(
      profileImage: profileImage,
      name: name,
    );
