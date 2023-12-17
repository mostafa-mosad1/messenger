import 'package:flutter/material.dart';
import 'package:messenger/signup.dart';

import 'homeLayout.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      Image(image: AssetImage("images/13.jpg"), height: double.infinity,
        fit: BoxFit.cover,),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Log_in'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your email address';
                          }
                        },
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          prefixIconColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                          fillColor: Colors.black38,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your Password';
                          }
                        },
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.black38,
                          filled: true,
                          labelText: 'Password',
                          prefixIconColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,color: Colors.white,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        width: double.infinity,
                        color: Colors.blue,
                        child: MaterialButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              print(emailController.text);
                              print(passwordController.text);
                              Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => homeLayout(),));
                            }
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => Signup(),));
                            },
                            child: Text(
                              'Register Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          width: 70,
                          height: 4,
                          color: Colors.cyan,
                        ),
                        Text("  OR SIGN UP WITH  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),),
                        Container(
                          width: 70,
                          height: 4,
                          color: Colors.cyan,
                        ),
                      ],),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Image(image: AssetImage("images/14.png"), height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Image(image: AssetImage("images/18.png"), height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Image(image: AssetImage("images/16.png"), height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Image(image: AssetImage("images/17.png"), height: 50,width: 50,),
                      ],)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
