import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/components/app_elevated_button.dart';
import 'package:flutter_clone_zara_app/app/config/routers/app_routes.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isChangeViews = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 2,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    color: isChangeViews ? Colors.black : Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              if (!isChangeViews)
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "USE OF COKIES",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                        "We use first-party and third-party cokies for analytical purposes and to show you advertising related to your preferences, based on your browsing habits and profile. For more information, please consult our Cookie Policy.")
                  ],
                )
              else
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ENJOY THE IN-STORE EXPERIENCE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                        "Enable location and stay up to date with nearby stores and drop points as well as available in-store experiences.")
                  ],
                ),
              const Spacer(),
              if (!isChangeViews)
                SizedBox(
                  width: double.infinity,
                  child: AppElevatedButton(
                      onPressed: () {
                        setState(() {
                          isChangeViews = true;
                        });
                      },
                      child: const Text(
                        "ACCEPT",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                )
              else
                SizedBox(
                  width: double.infinity,
                  child: AppElevatedButton(
                      onPressed: () {
                        context.goNamed(AppRoutes.login.name);
                      },
                      child: const Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                )
            ],
          ),
        ));
  }
}
