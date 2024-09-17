import 'package:antidoping/components/puzzle.dart';
import 'package:antidoping/components/quiz.dart';
import 'package:antidoping/screens/resources.dart';
import 'package:flutter/material.dart';
import 'package:antidoping/pages/home_page.dart';
// import 'package:antidoping/screens/games.dart';
import 'package:antidoping/screens/login.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {

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
                       // Navigator.push(context, MaterialPageRoute(builder: (_)=> const Games()));

          }, child: const Text('Games',style: TextStyle(color: Colors.white,fontSize: 15),)),
          TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> const Login()));

          }, child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 15),)),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('static/gameback.jpg'),fit: BoxFit.fill)
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 90),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Introducing ',style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text('Anti-Doping Trivia',style: TextStyle(color:  Color.fromARGB(255, 17, 224, 200),fontSize: 18),),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('"Achieve Greatness with Honorable Choices!"',style: TextStyle(fontSize: 28,color: Colors.green.shade900,fontWeight: FontWeight.bold),),
                  ),
                  const Padding(padding: EdgeInsets.all(8),child: Divider(thickness: 2,),),
                  const Padding(
                    padding: EdgeInsets.only(left: 22,right: 10),
                    child: Text("Ready to flex loose brain muscles? Just make sure they're all-natural --no doping allowed in this quiz arena",style: TextStyle(fontSize: 19),),
                  ),
                  const SizedBox(height: 50,),
                  Row(
                     mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                           Navigator.push(context,MaterialPageRoute(builder: (_)=> const Quiz()));
                        }, 
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green,fixedSize: const Size(120, 10)),
                        child: const Text('Start the Quiz',style: TextStyle(color: Colors.white),)
                        ),
                        const SizedBox(width: 20,),
                      ElevatedButton(

                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (_)=> const Puzzle()));
                        }, 
                       style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,fixedSize: const Size(120, 10)),
                        child: const Text('Start the Puzzle',style: TextStyle(color: Colors.white),)
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
        ),
    );
  }
}