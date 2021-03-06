import 'package:flutter/material.dart';
import 'package:image_life/pages/Home.dart';
import 'package:image_life/widgets/CustomButton.dart';
import 'package:image_life/widgets/InputFormField.dart';

class Register extends StatefulWidget {
  static String id = "register_screen";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var _usernameController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  String _usernameErrorText = "";
  String _emailErrorText = "";
  String _passwordErrorText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 60.0, right: 30.0, left: 30.0),
            child: Column(
              children: [
                InputFormField(
                  hintText: "Username ...",
                  obscureText: false,
                  icon: IconButton(icon: Icon(Icons.person), onPressed: (){},),
                  controller: _usernameController,
                  errorText: _usernameErrorText,
                  inputAction: TextInputAction.next,
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 10.0,
                ),
                InputFormField(
                  hintText: "Email Address ...",
                  obscureText: false,
                  icon: IconButton(icon: Icon(Icons.mail), onPressed: (){},),
                  controller: _emailController,
                  errorText: _emailErrorText,
                  inputAction: TextInputAction.next,
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10.0,
                ),
                InputFormField(
                  hintText: "Password ...",
                  obscureText: false,
                  icon: IconButton(icon: Icon(Icons.lock), onPressed: (){},),
                  controller: _passwordController,
                  errorText: _passwordErrorText,
                  inputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: 10.0,
                ),
                CustomButton(
                    buttonText: "Create Account",
                    buttonColor: Colors.white,
                    textButtonColor: Colors.black,
                    onClicked: (){
                      Navigator.pushNamed(context, Home.id);
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
