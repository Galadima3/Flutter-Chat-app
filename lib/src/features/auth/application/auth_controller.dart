import 'package:chat_app/src/features/auth/presentation/screens/landing_screen.dart';
import 'package:chat_app/src/features/chat/presentation/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController extends StatefulWidget {
  const AuthController({super.key});

  @override
  State<AuthController> createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Stream that listens to changes in user authentication state.
  Stream<User?> get userStream => _auth.authStateChanges();

  bool isLoggedIn(User? user) => user != null;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: userStream,
      
      builder: (BuildContext context, AsyncSnapshot snapshot) {
       if (snapshot.connectionState == ConnectionState.active){
         final user = snapshot.data;
         if(isLoggedIn(user)){
          return ChatScreen(user: user,);
         } else {
          return const LandingScreen();
         }
       }
        return const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}