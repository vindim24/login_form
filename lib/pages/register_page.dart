import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: const RegisterBody(),
      ),
    );
  }
}

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/background.svg",
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
            bottom: MediaQuery.of(context).size.height/1.94,
            child: const Text(
              "Register",
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFF2F80ED),
                fontWeight: FontWeight.w700,
                fontFamily: "Nunito"
          ),
        ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
          bottom: MediaQuery.of(context).size.height/2.07,
          child: const Text(
            "Full name",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF2F80ED),
              fontWeight: FontWeight.w400,
              fontFamily: "Nunito",
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
          bottom: MediaQuery.of(context).size.height/2.31,
          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.33,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF2F80ED),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
          bottom: MediaQuery.of(context).size.height/2.56,
          child: const Text(
            "Email",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF2F80ED),
              fontWeight: FontWeight.w400,
              fontFamily: "Nunito",
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
          bottom: MediaQuery.of(context).size.height/2.94,
          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.33,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF2F80ED),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
          bottom: MediaQuery.of(context).size.height/3.41,
          child: const Text(
            "Password",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF2F80ED),
              fontWeight: FontWeight.w400,
              fontFamily: "Nunito",
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/19.57,
          bottom: MediaQuery.of(context).size.height/4.14,
          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.33,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF2F80ED),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 25,
          bottom: MediaQuery.of(context).size.height/6.3,
          width: (MediaQuery.of(context).size.width/9.13)*3.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              SizedBox(
                width: MediaQuery.of(context).size.width/9.13,
                height: MediaQuery.of(context).size.width/9.13,
                child: GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Google!"),
                        )
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SvgPicture.asset("assets/images/logo-google.svg"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/9.13,
                height: MediaQuery.of(context).size.width/9.13,
                child: GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Facebook!"),
                        )
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SvgPicture.asset("assets/images/logo-facebook.svg"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/9.13,
                height: MediaQuery.of(context).size.width/9.13,
                child: GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Apple!"),
                        )
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SvgPicture.asset("assets/images/logo-apple.svg"),
                    ),
                  ),
                ),
              ),
            ],
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
              onPressed: () =>
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()
                      )
                  ),
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Nunito",
                ),
              ),

            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height/117.6,
            left: MediaQuery.of(context).size.width/16.44,
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Nunito"
                  ),
                  children: [
                    TextSpan(text: "Already Member? "),
                    TextSpan(
                      text:"Login",
                      style: TextStyle(fontWeight: FontWeight.bold),)
                  ]
              ),
            ))
      ],
    );
  }
}

