import 'package:antidoping/pages/home_page.dart';
import 'package:antidoping/screens/games.dart';
import 'package:antidoping/screens/resources.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Image.asset('static/dopless.png'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 8, 170, 179),
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomePage()));
          }, child: const Text('Home',style: TextStyle(color: Colors.white,fontSize: 15),)),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> const Resources()));
          }, child: const Text('Resources',style: TextStyle(color: Colors.white,fontSize: 15),)),
          TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> const Games()));

          }, child: const Text('Games',style: TextStyle(color: Colors.white,fontSize: 15),)),
          TextButton(onPressed: (){
                      //  Navigator.push(context, MaterialPageRoute(builder: (_)=> const Login()));

          }, child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 15),)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('static/signin.jpg'),
          
          fit: BoxFit.fill,
          
          )
        ),
      ),
    );
  }
}