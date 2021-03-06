import 'package:animal_chat_app/data/local/app_user.dart';
import 'package:animal_chat_app/data/repository/auth_repository.dart';
import 'package:animal_chat_app/data/repository/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userViewModelProvider =
    ChangeNotifierProvider((ref) => UserViewModel(ref.read));

class UserViewModel extends ChangeNotifier {
  UserViewModel(this._reader);

  final Reader _reader;

  late final AuthRepository _repository = _reader(authRepositoryProvider);

  AppUser? _user;

  AppUser? get user => _user;

  bool get isAuthenticated => _user != null;

  Future<void> signIn() {
    return _repository.signIn().then((result) {
      result.ifSuccess((data) {
        _user = data;
        notifyListeners();
      });
    });
  }

  Future signOut() {
    return _repository.signOut().then((result) {
      return result.when(
          success: (_) {
            _user = null;
            notifyListeners();
          },
          failure: (_) => result);
    });
  }
}
