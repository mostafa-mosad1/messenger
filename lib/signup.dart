
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool visible = false;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var kind;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(image: AssetImage("images/13.jpg"), height: double.infinity,
          fit: BoxFit.cover,),
        Container(
          padding: EdgeInsets.only(top: 30),
          child: ListView(
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("sign_up".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40)),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                      child: TextFormField(
                        controller: firstnameController,
                        decoration: InputDecoration(
                          fillColor: Colors.black38,
                          filled: true,
                          hintText: "First Name",
                          hintStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                      child: TextFormField(
                        controller: lastnameController,
                        decoration: InputDecoration(
                          fillColor: Colors.black38,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                          hintText: "Last Name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          fillColor: Colors.black38,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                          hintText: "Username",


                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                      child: TextFormField(
                        controller: emailController,
                        obscureText: visible,
                        decoration: InputDecoration(
                          fillColor: Colors.black38,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                          hintText: "enter your Email",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: visible,
                        decoration: InputDecoration(
                          fillColor: Colors.black38,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                          hintText: "Enter your password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              visible = !visible;
                              setState(() {});
                            },
                            icon: visible == false
                                ? Icon(Icons.visibility,color: Colors.white,)
                                : Icon(Icons.visibility_off,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.blue,
                      ),
                      width: 330,
                      child: MaterialButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:35,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),

              ),
            ],
          ),
        )
      ]),
    );
  }
}