

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              AuthBody(),
              Obx(() => isLogin.value ? LoginPage() : SignUpPage()),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLogin.value
                        ? const Text(
                            'New Member?',
                            style: TextStyle(color: Colors.grey),
                          )
                        : const Text(
                            'Have an Account?',
                            style: TextStyle(color: Colors.grey),
                          ),
                    TextButton(
                      onPressed: () {
                        isLogin.value = false;
                      },
                      child: isLogin.value
                          ? const Text(
                              'Sign up Here',
                              style: TextStyle(color: Colors.orange),
                            )
                          : InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                isLogin.value = true;
                              },
                              child: const Text(
                                'Sign in Here',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
