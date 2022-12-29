import 'dart:ffi';

class User_model {
  final String? user;
  final String? password;

   User_model({
    required this.user,
    required this.password
  });

  List<Object> list =['David',10];
   static List<User_model> user_list(){
     return [
       User_model(user: 'David', password: '1234'),
       User_model(user: 'Zen', password: 'David99'),
     ];
}
}