import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/components/app_elevated_button.dart';
import 'package:flutter_clone_zara_app/app/components/textformfield_widget.dart';
import 'package:flutter_clone_zara_app/app/config/routers/app_routes.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscureone = true;
  bool isObscuretwo = true;
  bool isSwitchedone = false;
  bool isSwitchedtwo = false;
  bool isCheckedone = false;
  bool isCheckedtwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "PERSONAL DETAILS",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              const TextFormFieldWidget(
                labelText: "EMAIL",
              ),
              const SizedBox(height: 8),
              TextFormFieldWidget(
                labelText: "PASSWORD",
                obscureText: isObscureone,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscureone = !isObscureone;
                      });
                    },
                    style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(48, 48))),
                    icon: Icon(
                      isObscureone
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    )),
              ),
              const SizedBox(height: 8),
              TextFormFieldWidget(
                labelText: "REPEAT PASSWORD",
                obscureText: isObscuretwo,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscuretwo = !isObscuretwo;
                      });
                    },
                    style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(48, 48))),
                    icon: Icon(
                      isObscuretwo
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    )),
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "NAME",
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "LAST NAME",
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "REGION",
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "ADDRESS",
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "(OPTIONAL)",
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "CITY",
              ),
              const SizedBox(height: 8),
              const TextFormFieldWidget(
                labelText: "POST CODE",
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Flexible(
                      child: TextFormFieldWidget(
                    labelText: "PREFIX",
                  )),
                  SizedBox(width: 30),
                  Expanded(
                      flex: 4,
                      child: TextFormFieldWidget(
                        labelText: "POST CODE",
                      ))
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Text("COMPANY"),
                  const Spacer(),
                  Switch(
                      value: isSwitchedone,
                      onChanged: ((value) {
                        setState(() {
                          isSwitchedone = value;
                        });
                      })),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  const Text(
                      "I WANT TO RECEIVE ZARA NEWS AND \n INFORMATION VIA EMAIL"),
                  const Spacer(),
                  Switch(
                      value: isSwitchedtwo,
                      onChanged: ((value) {
                        setState(() {
                          isSwitchedtwo = value;
                        });
                      })),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.black,
                      value: isCheckedone,
                      onChanged: (newBool) {
                        setState(() {
                          isCheckedone = !isCheckedone;
                        });
                      }),
                  const SizedBox(width: 12),
                  const Text(
                    "I accept the terms of use",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.black,
                      value: isCheckedtwo,
                      onChanged: (newBool) {
                        setState(() {
                          isCheckedtwo = !isCheckedtwo;
                        });
                      }),
                  const SizedBox(width: 12),
                  const Text(
                    "I have read and understand the \n Privacy and Cookies Policy.",
                  )
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () {
                    context.goNamed(AppRoutes.register.name);
                  },
                  backgroundColor: Colors.white,
                  side: const BorderSide(),
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
