import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Nama Pengguna", border: OutlineInputBorder()),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kata sandi",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: _obscurePassword,
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("Sign In"))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
