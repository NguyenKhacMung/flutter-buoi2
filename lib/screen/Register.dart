import 'package:flutter/material.dart';

class register extends StatefulWidget {
  final Function back;
  const register({Key? key, required this.back}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                widget.back();
              },
              child: Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "images/Back.png",
                  width: 26,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Create My Furniture",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Create account to find best Furniture",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              height: height * (227 / 896),
              width: width,
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                "images/img5.png",
                width: double.infinity,
                height: double.infinity,
                // fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 354,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xffBFBFBF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(25.0),
                        hintText: 'Full Name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xffBFBFBF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(25.0),
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xffBFBFBF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(25.0),
                        hintText: 'Phone Number',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xffBFBFBF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(25.0),
                        hintText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xffBFBFBF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(25.0),
                        hintText: 'Retype Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xffF2A213),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an account ?",
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Login now",
                          style: TextStyle(
                            color: Color(0xff239BD8),
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
