import 'package:flutter/material.dart';
import 'package:lab3/details-screen.dart';

import 'login-screen.dart';

class signupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return signupState();
  }
}

class signupState extends State<StatefulWidget> {
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  )
                ],
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.jpg"),
                  ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: "Username",
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  obscureText: _isObscure,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                  ),
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  obscureText: _isObscure,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                  ),
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 250,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => detailsScreen()));
                  },
                    child: Text(
                      "\u2713 Sign Up",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red))),
                    )),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey,fontWeight:FontWeight.w900),
                    ),
                  ),

                ],

              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
