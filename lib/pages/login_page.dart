import 'package:bubble_tea/components/my_btn.dart';
import 'package:bubble_tea/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome back you've been missed!",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false),
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Forgot Password ?"),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              onTap: signUserIn,
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  Text(" Or continue with "),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.email, size: 36,),
                  Icon(Icons.phone, size: 36,),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Not a member?"),
                  const SizedBox(width: 5,),
                  Text("Register Now!",
                    style: TextStyle(
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold,      
                    ),)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
