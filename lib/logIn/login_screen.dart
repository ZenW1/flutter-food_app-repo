import 'package:flutter/material.dart';
import 'package:more_widget/logIn/forget_password_screen.dart';
import 'package:more_widget/logIn/home_page.dart';
import 'package:more_widget/logIn/register_screen.dart';
import 'package:more_widget/user_model/user_model.dart';
class Login2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  TextEditingController _user = TextEditingController();

  TextEditingController _pw = TextEditingController();

  Widget _buildBody(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: 243,
          height: 73,
          child:const  Text(
            'Login to\nfind the best food',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 20),
                decoration: BoxDecoration(),
                child:  TextField(
                  controller: _user,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      label: Text('Email'),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                ),
                child:  TextField(
                  controller: _pw ,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: const InputDecoration(
                      label: Text('Password'),
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      )),
                ),
              ),
              Container(
                margin:const  EdgeInsets.only(top: 20, left: 200),
                child:  TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Login4()));
                 },
                  child: const Text('Forget Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                  color: Colors.black),
                ),
              ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    for(int i = 0 ; i<User_model.user_list().length; i++){
                       if(_user.text == User_model.user_list()[i].user && _pw.text == User_model.user_list()[i].password){
                         Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) => HomePage(email: '${_user.text}', password: '${_pw.text}',))
                         );
                       } else if(_user.text != User_model.user_list()[i].user && _pw.text == User_model.user_list()[i].password) {
                          print('Wrong Email');
                       } else {
                         print('Wrong Password');
                       }
                       }
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child:const Text(
                    'Sign in',
                    style:  TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin:const  EdgeInsets.only(top: 5, bottom: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Container(
                         decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              width: 5,
                            )
                          )
                         ),
                         child:  const Icon(Icons.facebook,color: Colors.black),
                       ),
                       const  SizedBox(width: 10,),
                         TextButton(
                          onPressed:(){
                            print('${_user.text}');
                          } ,
                        child: Text(  'Sign up with Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                         ),
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'s have an account?' ,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextButton(onPressed: (){


                  }, child: TextButton(
                    child: const  Text('Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    )),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login3())
                      );
                    },
                  ))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
