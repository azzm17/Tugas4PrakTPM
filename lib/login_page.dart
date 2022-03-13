import 'package:flutter/material.dart';
import 'package:tugas2navigation/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Column(children: [
              _createImage(),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _createImage(){
    return Container(
      child: Image.network("data:image/png;base64,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"),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
            BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.black87),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
            BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.black87),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.black : Colors.black, // background
          onPrimary: Colors.blue, // foreground
        ),
        onPressed: () {
          String text = "";
          if (username == "datepicker" && password == "12345678") {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
            _loginProcess(context);
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          print("isLoginSuccess : $isLoginSuccess");
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }

  void _loginProcess(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return MainPage();
    }));
  }
}
