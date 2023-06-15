import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/home.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  _setIsRegistered() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('isRegistered', true);
  }

  _setPassword() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString('password', textEditingController.value.text);
  }

  Future<String> _getPassword() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('password').toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _setPassword();
                _setIsRegistered();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
