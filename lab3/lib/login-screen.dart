import 'package:flutter/material.dart';
import 'package:lab3/details-screen.dart';
import 'package:lab3/signup-screen.dart';

class loginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loginState();
  }
}

class loginState extends State<StatefulWidget> {
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
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_) => signupScreen()));
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ),
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
                    hintText: "Username or Email Address",
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
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                child: Text(
                  "Forget Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => detailsScreen()));
                  },
                    child: Text(
                      "\u2713 LOGIN",
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
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have an account?"),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => signupScreen()));
                      },
                      child: new Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Continue With",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/google.png"),
                      ),
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/facebook.png"),
                      ),
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
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
