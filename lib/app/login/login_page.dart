import 'package:flutter/material.dart';
import 'package:flutter_modular/app/core/components/custom_theme_switch.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('E-mail'),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Senha'),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
              CustomThemeSwitch(),
            ],
          )),
    );
  }
}
