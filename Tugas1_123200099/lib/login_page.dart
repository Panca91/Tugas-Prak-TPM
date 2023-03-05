import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 25,
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: InputDecoration(
                labelText: '   Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '   Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child:
                SizedBox(
                  child : ElevatedButton(
                    onPressed: () {},
                    child: Text('Log In'),
                  ),
                ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Forgot password?'),
            ),
          ],
        ),
      ),
    );
  }
}
