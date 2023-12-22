import 'package:flutter/material.dart';
import 'package:note_card/controller/app/page_controller.dart';
import 'package:note_card/controller/app/snackbar_controller.dart';
import 'package:note_card/controller/http/repositories/login_repository.dart';

const alert = "⚠";

String? passwordValidator(String? value) {
  if (isValueEmpty(value)) return "$alert Insira sua senha, por favor!";
  value!;

  final alphanumericRegEx = RegExp(r"^[a-z0-9A-Z]+$");

  if (value.length < 2) {
    return "$alert Insira mais de dois caracteres!";
  } else if (!alphanumericRegEx.hasMatch(value)) {
    return "$alert Só são permitidos letras e números!";
  } else if (endsWithSpace(value)) {
    return "$alert Não é permitido \"espaço\" no final!";
  }

  return null;
}

String? userValidator(String? value) {
  if (isValueEmpty(value)) return "$alert Insira seu usuário, por favor!";
  value!;

  if (endsWithSpace(value)) {
    return "$alert Não é permitido \"espaço\" no final!";
  }

  return null;
}

bool isValueEmpty(String? value) {
  return value == null || value.isEmpty;
}

bool endsWithSpace(String value) {
  final endsWithSpaceRegEx = RegExp(r"[ ]$");
  return endsWithSpaceRegEx.hasMatch(value);
}

void buttonLogin(
  FormState? state,
  BuildContext context,
  String user,
  String password,
) async {
  if (state != null && state.validate()) {
    final login = await LoginRepository().login(user, password);
    if (context.mounted) {
      switch (login) {
        case LoginState.ok:
          changePage(AppPage.noteCardsScreen);
          FocusManager.instance.primaryFocus?.unfocus();
          break;
        case LoginState.wrongCredentials:
          showErrorSnackBar(context, 'Usuário e/ou senha incorretos!');
        case LoginState.error:
          showErrorSnackBar(context, 'Houve um erro na comunicação...');
        default:
      }
    }
  }
}
