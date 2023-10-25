import 'package:courier_app/const/colors.dart';
import 'package:courier_app/view/login_screen.dart';
import 'package:flutter/material.dart';
import '../utils/helper.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landing_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                  "https://logowik.com/content/uploads/images/t_courier4876.jpg"),
            ),
            // Spacer(),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Flexible(
                      child: Text(
                        "Selamat Datang di Courier App",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.routeName);
                        },
                        child: Text("Login"),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(AppColor.orange),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(
                              side: BorderSide(
                                  color: AppColor.orange, width: 1.5),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Create an Account"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
