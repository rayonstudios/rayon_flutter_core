import 'package:rayon_flutter_core/common/typedefs.dart';
import 'package:rayon_flutter_core/data/auth_api/config/auth_endpoints.dart';
import 'package:rayon_flutter_core/data/auth_api/entities/user_entity.dart';
import 'package:rayon_flutter_core/data/helpers/api_client.dart';
import 'package:rayon_flutter_core/domain/auth_repository/repository.dart';

export 'entities/entities.dart';

part 'auth_api.dart';

abstract class AuthApi {
  Future<UserEntity> signIn(SignInDto dto);

  Future<UserEntity> signUp(SignUpDto dto);

  Future<void> updateProfile();
}
