import 'package:flutter/material.dart';
import 'package:myfurniture_buoi2/component/btn.dart';

class Home extends StatefulWidget {
  final String img;
  final String header;
  final String title;

  final Function action;
  const Home(
      {Key? key,
      required this.header,
      required this.img,
      required this.title,
      required this.action})
      : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Container(
        // decoration: BoxDecoration(color: Color(0xffE5E5E5)),
        // height: mediaQuery.size.height,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                widget.action();
              },
              child: Container(
                alignment: Alignment.topRight,
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  // textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.2,
            ),
            Container(
              height: 227,
              width: mediaQuery.size.width,
              child: Image.asset(
                widget.img,
                width: double.infinity,
                height: double.infinity,
                // fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.02,
            ),
            Text(
              widget.header,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.15,
            ),
            const button(
              textBtn: "Continue",
            )
          ],
        ),
      ),
    );
  }
}
