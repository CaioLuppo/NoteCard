part of login;

class LoginFormField extends StatelessWidget {
  final Icon icon;
  final String labelText;
  final TextInputAction action;
  final TextEditingController controller;
  final bool password;

  const LoginFormField({
    super.key,
    required this.icon,
    required this.labelText,
    required this.controller,
    this.action = TextInputAction.next,
    this.password = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              labelText,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          TextFormField(
            controller: controller,
            obscureText: password,
            textInputAction: action,
            maxLength: 20,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              counterText: "",
              errorStyle: const TextStyle(
                  color: Colors.yellow, fontWeight: FontWeight.w500),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: icon,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: (value) {
              return password ? passwordValidator(value) : userValidator(value);
            },
          ),
        ],
      ),
    );
  }
}
