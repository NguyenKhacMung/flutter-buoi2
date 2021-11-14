import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double width = mediaQuery.size.width;
    double height = mediaQuery.size.height;
    final _formKey = GlobalKey<FormState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height * (227 / 896),
          width: width,
          child: Image.asset(
            "images/img4.png",
            width: double.infinity,
            height: double.infinity,
            // fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Text(
          "My Furniture",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Text(
          "Login to find thousand best Furniture",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: height * 0.08,
        ),
        Container(
          width: 354,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
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
                      prefixIcon: Image.asset(
                        "images/mess.png",
                        width: 26,
                      ),
                      hintText: 'Email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    style: TextStyle(
                      color: Color(0xffBFBFBF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      contentPadding: const EdgeInsets.all(25.0),
                      prefixIcon: Image.asset(
                        "images/Lock.png",
                        width: 26,
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          print(_passwordVisible);
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
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
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Or login with",
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 354,
          height: 55,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xffDDE5E9)),
          ),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/google.png",
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Google",
                  style: TextStyle(
                      color: Color(0xff404040),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don’t have an account ?",
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                color: Color(0xff239BD8),
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.04,
        )
      ],
    );
  }
}
