import 'package:chat_app/src/features/auth/presentation/screens/login_screen.dart';
import 'package:chat_app/src/features/auth/presentation/screens/register_screen.dart';
import 'package:chat_app/src/features/auth/presentation/widgets/landing_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          //Image
          Padding(
            padding: const EdgeInsets.all(6.5),
            child: Container(
              padding: const EdgeInsets.all(5),
              height: screenSize * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: BorderRadius.circular(12)),
              child: SvgPicture.asset('asset/images/chat.svg'),
            ),
          ),
          //Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Text(
              'Explore and chat with global friends',
              style: GoogleFonts.montserrat(
                  fontSize: 21.5, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Stay connected. Anytime. Anywhere',
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),

          //Buttons
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Button 1
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ));
                    },
                    child: LandingScreenButton(
                        text: 'Sign in',
                        color: Colors.grey.shade300,
                        isSignUp: false)),

                //Button 2
                InkWell(
                  onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const RegistrationScreen();
                        },
                      ));
                    },
                  child: LandingScreenButton(
                      text: 'Sign up',
                      color: Colors.blue.shade500,
                      isSignUp: true),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
