
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miyka24/pages/register_page.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: const LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/background.svg",
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            left: 21,
            bottom: MediaQuery.of(context).size.height/2.286,
            child: Column(
            children: const [
              Text(
                "Login/Signup",
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xFF2F80ED),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Nunito",
                )
              ),
            ],
            ),
        ),
        Positioned(
          left: 25,
          bottom: MediaQuery.of(context).size.height/2.49,
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
          left: 25,
          bottom: MediaQuery.of(context).size.height/2.85,
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
        const SizedBox(height: 19),
        Positioned(
          left: 25,
          bottom: MediaQuery.of(context).size.height/3.31,
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
          left: 25,
          bottom: MediaQuery.of(context).size.height/3.98,
          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.33,
            height: 40,
            child: TextField(
              obscureText: true,
              // obscuringCharacter: ,
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
          width: 161,
          height: 34,
          right: MediaQuery.of(context).size.width/12.45,
          child: InkWell(
            onTap: (){showAlertDialog(context);},
              child: const Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F80ED),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Nunito"
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
                        builder: (context) => const RegisterPage()
                    )
                ),
              child: const Text(
                "Login",
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
                TextSpan(text: "New Here? "),
                TextSpan(
                    text:"Register",
                    style: TextStyle(fontWeight: FontWeight.bold),)
              ]
            ),
        ))
      ],
    );
  }

  showAlertDialog(BuildContext context){
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: (){Navigator.of(context).pop;},
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Sorry, but it`s not our problem."),
      content: const Text("Try to remember your password and enter him again."),
      actions: [
        okButton
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      },
    );
  }
}



