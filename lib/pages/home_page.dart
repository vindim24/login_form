import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: const HomeBody(),
        ),
      );
  }
}

class HomeBody extends StatelessWidget{
  const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/background.svg",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fitWidth,
        ),
        Positioned(
          left: 48,
          top: MediaQuery.of(context).size.height/2,
          // bottom: 329,
          child: SizedBox(
            width: 60,
            height: 70,
            child: SvgPicture.asset("assets/images/logo.svg"),
          ),),
          Positioned(
            left: 39,
            // bottom: 212,
            top: MediaQuery.of(context).size.height/2 + 70,
            child: Opacity(
              opacity: 0.7,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF2F80ED),
                    fontFamily: "Nunito",
                  ),
                  children: [
                    TextSpan(text: "Lorem\n"),
                    TextSpan(
                        text: "consequat duis\nenim velit",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF2F80ED),
                          fontFamily: "Nunito",
                        ),
                    ),
                  ]
                ),
              ),
            ),
          ),
        Positioned(
          bottom: 41,
          right: 27,
          width: 144,
          height: 60,
          child: FloatingActionButton(
              backgroundColor: const Color(0xFF2F80ED),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  side:const BorderSide(color: Colors.white),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginPage()
                ));
              },
              child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Nunito",
                ),
              ),
          ),
        ),
      ],
    );
  }
}