import 'package:animal_chat_app/ui/loading_state_view_model.dart';
import 'package:animal_chat_app/ui/theme/app_theme.dart';
import 'package:animal_chat_app/ui/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider.select((value) => value.user));
    final userViewModel = ref.read(userViewModelProvider);
    final loading = ref.read(loadingStateProvider);
    final theme = ref.watch(appThemeModeProvider);

    return Scaffold();
  }
}
