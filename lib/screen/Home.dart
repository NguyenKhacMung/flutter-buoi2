import 'package:flutter/material.dart';
import 'package:myfurniture_buoi2/component/page.dart';
import 'package:myfurniture_buoi2/screen/Register.dart';
import 'package:myfurniture_buoi2/screen/ScreenLogin.dart';
import 'package:myfurniture_buoi2/screen/loginNow.dart';

class PageControl extends StatefulWidget {
  const PageControl({Key? key}) : super(key: key);

  @override
  _PageControlState createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 3);

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        Home(
          img: "images/img1.png",
          header: "My Furniture",
          title: "Your perfect interior design",
          action: () {
            if (controller.hasClients) {
              controller.animateToPage(
                1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        Home(
          img: "images/img2.png",
          header: "My Furniture",
          title: "Find your best furniture",
          action: () {
            if (controller.hasClients) {
              controller.animateToPage(
                2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        Home(
          img: "images/img3.png",
          header: "My Furniture",
          title: "We send your best furniture",
          action: () {
            if (controller.hasClients) {
              controller.animateToPage(
                3,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        login(),
        register(
          back: () {
            if (controller.hasClients) {
              controller.animateToPage(
                3,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        LoginNow(
          back: () {
            if (controller.hasClients) {
              controller.animateToPage(
                3,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
      ],
    );
  }
}
