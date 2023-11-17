import 'package:equatable/equatable.dart';
import 'package:rayon_flutter_core/common/typedefs.dart';
import 'package:rayon_flutter_core/data/auth_api/entities/entities.dart';

class UserModel extends Equatable {
  const UserModel({this.id, this.name, this.email});

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
    );
  }

  factory UserModel.fromJson(JsonMap json) {
    return UserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );
  }

  static const empty = UserModel(id: '0', name: '-', email: '-');

  bool get isEmpty => id == '0';

  bool get isNotEmpty => !isEmpty;

  JsonMap get toJson => {'id': id, 'name': name, 'email': email};

  final String? id;
  final String? name;
  final String? email;

  @override
  List<Object?> get props => [id, name, email];
}
