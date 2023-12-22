import 'package:note_card/controller/http/DAO/mock/users_dao.mocks.dart';

class LoginRepository {
  LoginRepository();

  Future<LoginState> login(String user, String password) async {
    final users = await MockUsersDAO().getUsers();

    if (users == {}) {
      return LoginState.error;
    } else if (users.containsKey(user) && password == users[user]["password"]) {
      return LoginState.ok;
    }

    return LoginState.wrongCredentials;
  }
}

enum LoginState {
  ok,
  wrongCredentials,
  error,
}
