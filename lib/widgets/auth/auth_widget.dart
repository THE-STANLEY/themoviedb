import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_button_style.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account', textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white))
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(fontSize: 16, color: Colors.black);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          const Text('In order to user the editing and rating capabilities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.', textDirection: TextDirection.ltr, 
          style: textStyle),
          const SizedBox(height: 5),
          TextButton(
            onPressed: (){},
            style: AppButtonStyle.linkButton, 
            child: const Text("Registration", textDirection: TextDirection.ltr),
          ),
          const SizedBox(height: 25),
          const Text("If you signed up but didn't get your verification email.", textDirection: TextDirection.ltr,
          style: textStyle),
          const SizedBox(height: 5),
          TextButton(
            onPressed: (){},
            style: AppButtonStyle.linkButton, 
            child: const Text("Verify email", textDirection: TextDirection.ltr),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget();

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

   void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Неверный логин или пароль';
    }
    setState(() {});
   } 

   void _resetPassword() {
    print("reset password");
   } 

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(errorText, style: const TextStyle(fontSize: 17, color: Colors.red)),
          const SizedBox(height: 15),
        ],
        const Text('Username', style: textStyle),
        TextField(controller: _loginTextController, decoration: const InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.zero)),
        const Text('Password', style: textStyle),
        TextField(controller: _passwordTextController, decoration: const InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.zero), obscureText: true,),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              TextButton(
                onPressed: _auth, 
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 0,
                    )
                  ),
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  textStyle: WidgetStatePropertyAll(TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                child: const Text('Login')
              ),
              TextButton(
                  style: AppButtonStyle.linkButton,
                onPressed: _resetPassword, 
                child: const Text('Reset password')
              ),      
            ],
          ),
        )
      ],
    );
  }
}