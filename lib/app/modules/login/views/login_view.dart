import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pet_shop/app/routes/app_pages.dart';
import 'package:pet_shop/const.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/pet_logo.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Let's Find tou freindly Pets at here",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: false,
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.black87),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              // style: FlutterFlowTheme.of(context).bodyMedium,
              keyboardType: TextInputType.emailAddress,
              // validator: _model.emailAddressControllerValidator.asValidator(context),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.black87),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                ),
              ),
              // style: FlutterFlowTheme.of(context).bodyMedium,
              keyboardType: TextInputType.emailAddress,
              // validator: _model.emailAddressControllerValidator.asValidator(context),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.HOME);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                fixedSize: Size(Get.width, 50),
              ),
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: const Text(
                    'Sign Up here',
                    style: TextStyle(
                      fontSize: 16,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
