import 'package:flutter/material.dart';

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
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          Text('In order to user the editing and rating capabilities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.', textDirection: TextDirection.ltr, 
          style: textStyle),
          const SizedBox(height: 25),
          Text("If you signed up but didn't get your verification email.", textDirection: TextDirection.ltr,
          style: textStyle)
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
  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Username', style: textStyle),
        const TextField(decoration: InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.zero)),
        Text('Password', style: textStyle),
        const TextField(decoration: InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.zero), obscureText: true,),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              TextButton(
                onPressed: () {}, 
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
                  style: const ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.blue),
                  textStyle: WidgetStatePropertyAll(TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                onPressed: () {}, 
                child: const Text('Reset password')
              ),      
            ],
          ),
        )
      ],
    );
  }
}