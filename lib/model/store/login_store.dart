import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
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