import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String user = "";

  @observable
  String password = "";

  @action
  void updateCredentials(user, password) {
    this.user = user;
    this.password = password;
  }
}