import 'package:chat_app/src/features/auth/data/auth_repository.dart';
import 'package:chat_app/src/features/auth/presentation/widgets/fancy_button.dart';
import 'package:chat_app/src/features/chat/presentation/screens/chat_screen.dart';
import 'package:chat_app/src/utils/validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = true;
    Future onSubmit(
      {required String email,
      required String password,
      required BuildContext context}) async {
    if (_formKey.currentState!.validate() &&
        email.isNotEmpty &&
        password.isNotEmpty) {
    //  ref.read(authRepositoryProvider).signInWithEmailAndPassword(emailController.text, passwordController.text);
    final rex = await AuthRepository().signInWithEmailAndPassword(emailController.text, passwordController.text);
      if(!mounted) return;
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return ChatScreen(user: rex!,);
        },
      ));
}}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 75),
              Center(
                  child: Image.asset(
                'asset/images/logo.jpg',
                height: 200,
                width: 250,
              )),
              const SizedBox(height: 65),
              //email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    validator: (value) =>
                        Validator.validateEmail(email: value),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),

              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    obscureText: isPasswordVisible,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off)),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.5),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )),
              ),
              const SizedBox(height: 14),
              InkWell(
                onTap: () => onSubmit(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                    context: context),
                child: const FancyButton(
                  text: 'Log in',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
