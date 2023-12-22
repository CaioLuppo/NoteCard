part of login;

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String user;
  final String password;

  const LoginButton(
    this.formKey, {
    super.key,
    required this.user,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final state = formKey.currentState;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        width: 160,
        height: 48,
        child: ElevatedButton(
          onPressed: () => buttonLogin(state, context, user, password),
          style: ButtonStyle(
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.green[400]),
          ),
          child: const Text(
            loginButtonLabel,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
