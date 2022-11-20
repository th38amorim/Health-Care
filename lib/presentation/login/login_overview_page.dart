import 'package:flutter/material.dart';

import 'widgets/login_with_google_button_widget.dart';

class LoginOverviewPage extends StatelessWidget {
  const LoginOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('app_icon.png', height: 200),
              const SizedBox(height: 50),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                  children: [
                    TextSpan(text: 'Bem Vindo ao\n'),
                    TextSpan(
                      text: 'Health Care',
                      style: TextStyle(
                        color: Color(0XFF009B70)
                      )
                    ),
                  ]
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Cuide de você aonde quer que esteja!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 50),
              const LoginWithGoogleButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}