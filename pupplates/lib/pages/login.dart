import 'package:flutter/material.dart';
import 'package:pupplates/pages/signup.dart';
import 'package:pupplates/widgets/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0xFFFFB90E),
                      Color(0xFFFFD60E),
                    ])),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Text(""),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/image/logo.png",
                        width: MediaQuery.of(context).size.width / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Login",
                              style: AppWidget.HeadlineTextFeildStyle(),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle:
                                      AppWidget.semiBoldtTextFeildStyle(),
                                  prefixIcon: const Icon(Icons.email_outlined)),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle:
                                      AppWidget.semiBoldtTextFeildStyle(),
                                  prefixIcon: const Icon(Icons.password_outlined)),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot Password?",
                                style: AppWidget.lightTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 80.0,
                            ),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(25)),
                                child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Signup()));
                      },
                      child: Text(
                        "Don't have an account? Signup",
                        style: AppWidget.lightTextFeildStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
