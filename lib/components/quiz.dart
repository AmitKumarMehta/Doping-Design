import 'package:antidoping/pages/home_page.dart';
import 'package:antidoping/screens/games.dart';
import 'package:antidoping/screens/login.dart';
import 'package:antidoping/screens/resources.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('static/dopless.png'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 79, 230, 180),
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
                image: DecorationImage(image: AssetImage('static/quiz.jpeg'),fit: BoxFit.fill)
              ),
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 90),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Text('Question 1 of 10',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.green.shade900),),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Which food is rich in omega-3 fatty acids and supports recovery?',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green.shade900),),
                    ),
                    const SizedBox(height: 25,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.purple
                                ),
                                child:const Center(child: Text('Salmon',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.purple
                                ),
                                child: const Center(child: Text('Bread',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration:const  BoxDecoration(
                                  color: Colors.purple
                                ),
                                child:const  Center(child: Text('Chicken',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.purple
                                ),
                                child: const Center(child: Text('Pasta',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ),
            ),
            Container(
             margin: const EdgeInsets.only(top: 490,left: 130),
            //  width: 100,
            //  height: 100,
              //alignment: Alignment.center,
              //color: Colors.deepPurple,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                onPressed: (){},
                child: const Text('Submit Answers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ),
            )
          ],
        )
        ),
    );
  }
}