import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_care/presentation/home/home_overview_page.dart';

class LoginWithGoogleButtonWidget extends StatefulWidget {
  const LoginWithGoogleButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginWithGoogleButtonWidget> createState() =>
      _LoginWithGoogleButtonWidgetState();
}

class _LoginWithGoogleButtonWidgetState
    extends State<LoginWithGoogleButtonWidget> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator(
            color: Color(0XFF009B70),
            strokeWidth: 6,
          )
        : SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoading = true;
                });
                Timer.periodic(const Duration(seconds: 2), (t) {
                  t.cancel();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeOverViewPage()),
                  );
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'google_logo.png',
                    height: 32,
                  ),
                  const Text(
                    'Entrar com o Google',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
  }
}
