// pages/login_page.dart
import 'package:flutter/material.dart';
import 'homepage/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loginToPBX = false;
  bool loginToWebphone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        automaticallyImplyLeading: false, // Remove back arrow button
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            Row(
              children: [
                Text('Login to PBX?'),
                Switch(
                  value: loginToPBX,
                  onChanged: (value) {
                    setState(() {
                      loginToPBX = value;
                    });
                    print("Login to PBX: $loginToPBX");
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text('Login to Webphone?'),
                Switch(
                  value: loginToWebphone,
                  onChanged: (value) {
                    setState(() {
                      loginToWebphone = value;
                    });
                    print("Login to Webphone: $loginToWebphone");
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: canLogin() ? () => navigateToHomePage(context) : null,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  bool canLogin() {
    print("Login to Webphone: $loginToWebphone");
    print("Username: ${usernameController.text}");
    print("Password: ${passwordController.text}");

    bool result = (loginToWebphone && usernameController.text.isNotEmpty && passwordController.text.isNotEmpty);
    print("Can login: $result");

    return result;
  }

  void navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
