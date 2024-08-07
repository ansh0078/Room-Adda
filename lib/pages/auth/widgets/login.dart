

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            AppString.loginText,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 30),
          TextField(
            controller: email,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: const Icon(Icons.alternate_email_outlined),
              labelText: 'Email',
              hintText: 'Enter your Email Id',
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            controller: password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: const Icon(Icons.password_outlined),
              labelText: 'Password',
              hintText: 'Enter your Password',
            ),
          ),
          const SizedBox(height: 40),
          Obx(
            () => authController.isLoading.value
                ? const CircularProgressIndicator()
                : PrimaryBtn(
                    ontap: () {
                      authController.login(email.text, password.text);
                    },
                    btnName: "Login",
                    icon: Icons.lock_outline,
                  ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                child: const Text('Reset Password'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}