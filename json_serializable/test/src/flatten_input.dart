// @dart=3.8

part of '_json_serializable_test_input.dart';

@ShouldGenerate(r'''
FlattenBasic _$FlattenBasicFromJson(Map<String, dynamic> json) => FlattenBasic()
  ..normal = _PrivateModel.fromJson(json['normal'] as Map<String, dynamic>)
  ..flattened = _PrivateModel.fromJson(json as Map<String, dynamic>);

Map<String, dynamic> _$FlattenBasicToJson(FlattenBasic instance) =>
    <String, dynamic>{
      'normal': instance.normal,
      ...instance.flattened.toJson(),
    };
''')
@JsonSerializable()
class FlattenBasic {
  late _PrivateModel normal;

  @JsonKey(flatten: true)
  late _PrivateModel flattened;
}

@JsonSerializable()
class _PrivateModel {
}
