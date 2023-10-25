import 'package:courier_app/const/colors.dart';
import 'package:courier_app/view/home_screen.dart';
import 'package:courier_app/utils/helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // height: Helper.getScreenHeight(context),
        // width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: Helper.getTheme(context).headlineLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Add your details to login'),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 235, 235, 235),
                    shape: StadiumBorder(),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Your Email",
                      hintStyle: TextStyle(
                        color: AppColor.placeholder,
                      ),
                      contentPadding: EdgeInsets.only(left: 40),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 235, 235, 235),
                    shape: StadiumBorder(),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Your Password",
                      hintStyle: TextStyle(
                        color: AppColor.placeholder,
                      ),
                      contentPadding: EdgeInsets.only(left: 40),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.routeName);
                    },
                    child: Text("Login"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text("Forgot your password?"),
                ),
                SizedBox(
                  height: 60,
                ),
                Text("Or Login With"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF367FC0),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook-48.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Facebook"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFFDD4839),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/icons8-google-plus-50.png",
                          height: 30, width: 30,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Google")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?"),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
