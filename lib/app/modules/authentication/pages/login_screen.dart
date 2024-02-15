import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/components/app_elevated_button.dart';
import 'package:flutter_clone_zara_app/app/components/textformfield_widget.dart';
import 'package:flutter_clone_zara_app/app/config/routers/app_routes.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.clear,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "LOG IN TO YOUR ACCOUNT",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),
            const TextFormFieldWidget(
              labelText: "EMAIL",
            ),
            const TextFormFieldWidget(
              labelText: "PASSWORD",
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: AppElevatedButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: const Text("LOG IN"),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Forgot your password?"),
            const SizedBox(height: 48),
            const Text(
              "NEED AN ACCOUNT?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: AppElevatedButton(
                onPressed: () {
                  context.goNamed(AppRoutes.register.name);
                },
                backgroundColor: Colors.white,
                side: const BorderSide(),
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
