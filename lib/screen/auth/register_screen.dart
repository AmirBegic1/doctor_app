import 'package:doctor_app/screen/auth/login_screen.dart';
import 'package:doctor_app/screen/main/home_page.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String routeName = '/register';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, LoginScreen.routeName, (route) => false);
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/ProductArena_logo 1.png",
                      width: 350,
                    ),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          iconColor: Colors.black,
                          labelStyle: const TextStyle(color: Colors.grey),
                          labelText: "Email",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'Ovo polje ne moze biti prazno!';
                          } else if (value != "career@tech397.com") {
                            return 'Pogre??an email';
                          }
                          return null;
                        }),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          iconColor: Colors.black,
                          labelStyle: const TextStyle(color: Colors.grey),
                          labelText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'Ovo polje ne moze biti prazno!';
                          } else if (value != "Pass123!") {
                            return 'Pogre??an password';
                          }
                          return null;
                        }),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          iconColor: Colors.black,
                          labelStyle: const TextStyle(color: Colors.grey),
                          labelText: "Confirm Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'Ovo polje ne moze biti prazno!';
                          } else if (_passwordController !=
                              _confirmPasswordController) {
                            return 'Passwordi nisu isti';
                          }
                          return null;
                        }),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Uspjesno logirani!'),
                              ),
                            );
                            Navigator.pushNamedAndRemoveUntil(context,
                                HomeScreen.routeName, (route) => false);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: const Size.fromHeight(8),
                            padding: const EdgeInsets.all(8)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
