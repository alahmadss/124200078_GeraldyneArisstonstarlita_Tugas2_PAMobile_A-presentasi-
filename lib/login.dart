import 'package:flutter/material.dart';
import 'package:tugas/home.dart'; //import

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = ""; //deklarasi tipe data variabel username
  String password = ""; //deklarasi tipe data variabel password
  bool isLoginSucces = false; //deklarasi

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset('assets/login.jpg'), //buat gambar
      ),
    );

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Login Page'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logo,
              SizedBox(height: 45.0),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
          ),
        ));
  }

  Widget _usernameField() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
            onChanged: (value) {
              username = value;
            },
            enabled: true,
            decoration: InputDecoration(
                hintText: "Username",
                label: Text("Username"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
            )
        )
    );
  }

  Widget _passwordField() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
            onChanged: (value) {
              password = value;
            },
            obscureText: true,
            obscuringCharacter: '*',
            enabled: true,
            decoration: InputDecoration(
                hintText: "Password",
                label: Text("Password"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
            )
        )
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return HomePage(Username: username, Password: password);
          }));
        },
        child: (isLoginSucces)? Text("Logout") : Text("Login"),
      ),
    );
  }
}
