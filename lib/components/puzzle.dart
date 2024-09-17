import 'package:antidoping/pages/home_page.dart';
import 'package:antidoping/screens/games.dart';
import 'package:antidoping/screens/login.dart';
import 'package:antidoping/screens/resources.dart';
import 'package:flutter/material.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({super.key});

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
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
                image: DecorationImage(image: AssetImage('static/puzzle.png'),fit: BoxFit.fill)
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 90),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child:Column(
                  children: [
                    const SizedBox(height: 20,),
                    Text('PUZZLE GAME',style: TextStyle(color: Colors.orange.shade700,fontSize: 24,fontWeight: FontWeight.bold),),
                    Text("Let's Learn To Be Dopeless In A Fun Way",style: TextStyle(color: Colors.brown.shade700,fontSize: 16,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          color: const Color.fromARGB(255, 48, 11, 55),
                          child: const Center(child: Text('H',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          color: const Color.fromARGB(255, 48, 11, 55),
                          child: const Center(child: Text('C',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          color: const Color.fromARGB(255, 48, 11, 55),
                          child: const Center(child: Text('A',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          color: const Color.fromARGB(255, 48, 11, 55),
                          child: const Center(child: Text('O',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          color: const Color.fromARGB(255, 48, 11, 55),
                          child: const Center(child: Text('C',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Guess',
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green,shape: const LinearBorder()),
                
                onPressed: (){},
                child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ),
               const Text("Score: 0/5",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
               const SizedBox(height: 10,),
               ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green,shape: const LinearBorder()),
                
                onPressed: (){},
                child: const Text('Next Puzzle',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ),
                  ],
                ),
            )
          ],
        )
        ),
    );
  }
}