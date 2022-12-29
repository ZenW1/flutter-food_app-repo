
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage( {Key? key,required this.email, required this.password,}) : super(key: key,);
  final  String email;
  final String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }
  
  Widget _buildBody(){
    return Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Hello $email',
           style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold
           ),),
           Text('Your Password is $password'),
         ],
       ),
    );
  }
  
  Widget _buildBottom(){
    return BottomAppBar(
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.subject_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.school_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_outlined)),
        ],
      ),
    );
  }
}
