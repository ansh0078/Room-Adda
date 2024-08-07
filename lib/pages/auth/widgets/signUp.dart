import 'package:flutter/material.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            AppString.registerText,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 30),
          TextField(
            controller: name,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: const Icon(Icons.person),
              labelText: 'User Name',
              hintText: 'Enter your User Name',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: const Icon(Icons.alternate_email_outlined),
              labelText: 'Email',
              hintText: 'Enter your Email Id',
            ),
          ),
          const SizedBox(height: 20),
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
          // const SizedBox(height: 20),
          // TextField(
          //   keyboardType: TextInputType.number,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(16),
          //     ),
          //     prefixIcon: const Icon(Icons.password_outlined),
          //     labelText: 'OTP',
          //     hintText: 'Enter your OTP',
          //   ),
          // ),
          const SizedBox(height: 30),
          Obx(
            () => authController.isLoading.value
                ? CircularProgressIndicator()
                : PrimaryBtn(
                    btnName: "SignUp",
                    icon: Icons.lock_outline,
                    ontap: () {
                      authController.createUser(email.text, password.text, name.text);
                      // Get.to(StudentVerification());
                    },
                  ),
          ),
        ],
      ),
    );
  }
}