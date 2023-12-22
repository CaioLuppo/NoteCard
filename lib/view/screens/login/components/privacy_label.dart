part of login;

class PrivacyLabel extends StatelessWidget {
  final privacyUrl = "https://www.google.com/";

  const PrivacyLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async => await launchUrlString(privacyUrl),
      child: const Text(
        privacyText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
