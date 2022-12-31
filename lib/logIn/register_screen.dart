import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:more_widget/logIn/login_screen.dart';

class Login3 extends StatelessWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return ListView(
      children: [
        Container(
          margin:const  EdgeInsets.all(20),
          width: 243,
          height: 73,
          child:const  Text(
            'Register\nnew account',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding:const  EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:20,bottom: 20),
                decoration: BoxDecoration(),
                child: const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: Text('Full name'),
                      suffixIcon: Icon(
                        Icons.account_box,
                        color: Colors.black,
                      )),
                ),
              ),
              Container(
                margin:const  EdgeInsets.only( bottom: 20),
                decoration:const  BoxDecoration(),
                child:const  TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: Text('Email'),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only( bottom: 20),
                decoration: BoxDecoration(),
                child:const  TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text('Phone Number'),
                      suffixIcon: Icon(
                        Icons.phone_iphone_rounded,
                        color: Colors.black,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(),
                child: const  TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                ),
              ),
              Container(
                margin:const  EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child: const  Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        width: 1
                      ),
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
                          child:  Icon(Icons.facebook,color: Colors.black),
                        ),
                       const  SizedBox(width: 10,),
                        const
                        Text(
                          'Sign up with Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ))
                ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ const
                  Text('Already have an account?' ,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Login2()));
                  }, child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
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
