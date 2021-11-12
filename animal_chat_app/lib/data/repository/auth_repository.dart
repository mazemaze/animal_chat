import 'package:animal_chat_app/data/local/app_user.dart';
import 'package:animal_chat_app/data/model/result.dart';

abstract class AuthRepository {
  Future<Result<AppUser>> signIn();

  Future<Result<void>> signOut();
}
