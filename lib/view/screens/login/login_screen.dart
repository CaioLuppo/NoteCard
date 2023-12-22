library login;

import 'package:flutter/material.dart';
import 'package:note_card/controller/login/login_form_controller.dart';
import 'package:note_card/model/store/login_store.dart';
import 'package:note_card/view/resources/strings.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'components/login_button.dart';
part 'components/login_formfield.dart';
part 'components/privacy_label.dart';

class LoginScreen extends StatelessWidget {
  static final formKey = GlobalKey<FormState>();
  static final userController = TextEditingController();
  static final passwordController = TextEditingController();

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginStore = LoginStore();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Form(
              key: formKey,
              onChanged: () => loginStore.updateCredentials(
                userController.text,
                passwordController.text,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      LoginFormField(
                        controller: userController,
                        icon: const Icon(Icons.person),
                        labelText: userLabelText,
                      ),
                      LoginFormField(
                        controller: passwordController,
                        icon: const Icon(Icons.lock),
                        labelText: passwordLabelText,
                        password: true,
                        action: TextInputAction.done,
                      ),
                      Observer(
                        builder: (context) {
                          return LoginButton(
                            formKey,
                            user: loginStore.user,
                            password: loginStore.password,
                          );
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
