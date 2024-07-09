import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services.dart';
import '../widgets/customtectfield.dart';
import 'login screen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final Firebaseservices _service = Firebaseservices();

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd5e6f9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 140,
              ),
              const Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text(
                  'Let’s Create Account Together',
                  style: TextStyle(color: Color(0xFF707B81)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Your Name',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Customtextfield(
                  control: _namecontroller,
                  hint: 'Azeem Ali',
                  visibility: false),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Email Address',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Customtextfield(
                  control: _emailcontroller,
                  hint: 'alissonbecker@gmail.com',
                  visibility: false),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Customtextfield(
                control: _passwordcontroller,
                hint: 'Password',
                visibility: true,
                suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.eye_slash)),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5B9EE1)),
                    onPressed: () {
                      _service.signupwithemailpasswd(
                          email: _emailcontroller.text,
                          password: _passwordcontroller.text,
                          contxt: context);
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ));
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
