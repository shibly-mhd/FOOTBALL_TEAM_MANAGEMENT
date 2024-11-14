import 'package:hive_flutter/adapters.dart';
part 'userdata.g.dart';

@HiveType(typeId: 2)
class Profile {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? password;

  Profile({required this.name, required this.password});
}
