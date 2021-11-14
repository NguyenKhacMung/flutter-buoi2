import 'package:flutter/material.dart';

class LoginNow extends StatelessWidget {
  const LoginNow({Key? key, required this.back}) : super(key: key);
  final Function back;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: height * (227 / 896),
            width: width,
            margin: const EdgeInsets.only(bottom: 10),
            child: Image.asset(
              "images/img6.png",
              width: double.infinity,
              height: double.infinity,
              // fit: BoxFit.cover,
            ),
          ),
          Text(
            "Register Success",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Container(
            width: 354,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xffF2A213),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {
                back();
              },
              child: Text(
                "Login Now",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
