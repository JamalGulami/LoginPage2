import 'package:flutter/material.dart';
import 'compunent/text_filed.dart';
import 'compunent/my_button.dart';
import 'compunent/squer_title.dart';
class login_page extends StatelessWidget {

  login_page({super.key});
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  final emailController=TextEditingController();
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70.0),
              const Icon(Icons.lock,size: 100.0),
              //const SizedBox(height: 20.0),
              Text('Welcome back you have been meissed',
                style: TextStyle(fontSize: 14.0,color: Colors.black54,
                ),
              ),
              //user name start
              const SizedBox(height: 30.0),
              My_textfiled(
                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),
              //email
              const SizedBox(height: 10.0),
              My_textfiled(
                controller: emailController,
                hintText: 'email address',
                obscureText: false,
              ),
              //password
              const SizedBox(height: 10.0),
              My_textfiled(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
                                      // forgot password88888888888888
              SizedBox(height: 16.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('forgotte password?',
                      style: TextStyle(color: Colors.grey[700],
                      ),
                    )
                  ],
                ),//8888888888888888888888888888888888888888888888888888
              ),
              const SizedBox(height: 20.0),
              My_button(
                onTap:signUserIn,
              ),
              SizedBox(height: 20.0,),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Row(
                  children: [
                    Expanded(
                        child:Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )) ,
                    Text('OR sign up with'),
                    Expanded(
                        child:Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )), //#####################end of Divider
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  SizedBox(height: 20.0),
                  squerTitle(imagepath:'lib/image/apple.png'),
                  SizedBox(width: 30.0),
                  squerTitle(imagepath: 'lib/image/google.jpg'),
                ],
              ),
              //$$$$$$$$$$$$$$$$$$$$$ end of image


              SizedBox(height: 50),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 5),
                Text('Regester Now',
                  style: TextStyle(color: Colors.blue,
                  fontWeight: FontWeight.bold),
                )
              ],
        )
            ],
          ),
        ),
      ),


    );
  }
}