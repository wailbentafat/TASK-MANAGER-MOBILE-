import 'package:freezed_annotation/freezed_annotation.dart';

part 'taskmo.freezed.dart';
part 'taskmo.g.dart';

@freezed
class Taskmo with _$Taskmo{
  const factory Taskmo({
    required String task,
    required bool completed,
  }) = _Taskmo;
  factory Taskmo.fromJson(Map<String, dynamic> json) => _$TaskmoFromJson(json);
}