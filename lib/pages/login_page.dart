import 'package:flutter/material.dart';
import 'package:ui/global/global.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("${emailController} aasdasdasdas");
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -width * 0.35,
            child: Container(
              width: width * 0.6,
              height: width * 0.6,
              decoration: BoxDecoration(
                color: CustomColors.ligthBlue200,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: -width * 0.6,
            top: -width * 0.6,
            child: Container(
              width: width * 1.2,
              height: width * 1.2,
              decoration: BoxDecoration(
                color: CustomColors.grey300,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  height: height * 0.8,
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "reis",
                            style: TextStyle(
                              color: CustomColors.ligthBlue200,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "up",
                            style: TextStyle(
                              color: CustomColors.blue200,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "You have goals.",
                        style: TextStyle(
                          color: CustomColors.blue200,
                          fontSize: 20.0,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Invest",
                            style: TextStyle(
                              color: CustomColors.blue200,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            " to achieve them.",
                            style: TextStyle(
                              color: CustomColors.blue200,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email*",
                          hintStyle: TextStyle(
                            color: CustomColors.grey,
                            fontSize: 14.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.ligthBlue200.withOpacity(0.5),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.ligthBlue200.withOpacity(0.5),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password*",
                          hintStyle: TextStyle(
                            color: CustomColors.grey,
                            fontSize: 14.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.ligthBlue200.withOpacity(0.5),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.ligthBlue200.withOpacity(0.5),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Log in",
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.blue200,
                          minimumSize: const Size(
                            double.infinity,
                            50.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              12.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.ligthBlue200,
                          minimumSize: const Size(
                            double.infinity,
                            50.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              12.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Forgot username or password?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.blue200,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        child: Text(
                          "By proceding you also agree to the Terms of Service and Privacy Policy",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
