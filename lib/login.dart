import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    _getPswd();
    super.initState();
  }

  Future<String> _getPswd() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('password').toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  if (await _getPswd() == textEditingController.value.text) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Parol xato')));
                  }
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
