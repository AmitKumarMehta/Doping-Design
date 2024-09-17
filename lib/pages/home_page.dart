import 'package:antidoping/components/feedback.dart';
import 'package:antidoping/screens/games.dart';
import 'package:antidoping/screens/login.dart';
import 'package:antidoping/screens/resources.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('static/dopless.png'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 8, 170, 179),
        actions: [
          TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomePage()));
              },
              child: const Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Resources()));
              },
              child: const Text(
                'Resources',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Games()));
              },
              child: const Text(
                'Games',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      'static/boyplay.jpg',
                      fit: BoxFit.cover,
                    )),
                const Positioned(
                  top: 90,
                  left: 10,
                  child: Column(
                    children: [
                      Text(
                        'PURE PLAY',
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 236, 131),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'PURE VICTORY',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 232, 244),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 150.0, left: 10, right: 5),
                  child: Text(
                    'Our App is committed to raising awareness about anti-doping practices and promoting integrity in sports We provide comprehensive, multilingual resources and engaging content to educate athletes and coaches on the importance of clean competition. Through interactive tools and real-time updates, we ensure that everyone in the sporting community is informed and empowered to maintain a fair anddoping-free environment.',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.all(5),
                color: Colors.grey.shade100,
                child: const Row(
                  children: [
                    Text(
                      'Clean Competition | ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Fair Play | ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Integrity in Sports | ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Doping-Free Zone | Championing Fairness | ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Stay Clean, Play Clean | No to Doping | Respect the Rules | Win with Integrity | Fight Doping Together | ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      ' Pure Sportsmanship | Honest Victory | Fairness First | ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Protect Clean Athletes |Commit to Clean ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('static/medicine2.jpg'))),
                      ),
                       Container(
                        margin: const EdgeInsets.only(top: 30,left: 15),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:const Column(
                          children: [
                            Text("Cardiovascular",style: TextStyle(color: Colors.white,fontSize: 20),),
                            Text("Trouble",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(left: 60,top: 140),
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.white,
                        
                      )),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('static/swim.jpg'))),
                      ),
                       Container(
                        margin: const EdgeInsets.only(top: 55,left: 40),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:const Column(
                          children: [
                            Text("Organ",style: TextStyle(color: Colors.white,fontSize: 20),),
                            Text("Damage",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(left: 60,top: 140),
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.white,
                        
                      )),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 15),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('static/medicine3.jpg'))),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30,left: 50),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Column(
                          children: [
                            Text("Hormonal",style: TextStyle(color: Colors.white,fontSize: 20),),
                            Text("Havoc",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ],
                        ),
                      ),
                       Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(left: 60,top: 140),
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.white,
                        
                      )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(8)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is DOPING?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        'The Unfair Advantage Doping is using banned substances or methods to get an edge in sports. It is like taking a shortcut that not only cheats the game but also risks your health. We champion fair play and believe every win should be earned, not engineered.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400))
                  ],
                )),
            const SizedBox(
              height: 5,
            ),
            const Center(
                child: Text(
              'play true',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.all(3),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset('static/swim2.png'))),
            const SizedBox(
              height: 15,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(8)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#SAY NO TO DOPING',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                        'In the pursuit of greatness, true champions rise through dedication, discipline, and integrity. Dopingundermines the spirit of sportsmanship, compromising both health and fairness. By saying no to doping, you protect your honor and inspire others to achieve through hard work. Stand tall and let your success be defined by effort, not shortcuts.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400))
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/law.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('The Rules')
                        ],
                      )),
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/rights.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Rights & Responsibilities')
                        ],
                      )),
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/stop.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Prohibited Substances')
                        ],
                      )),
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/doping1.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Doping Control Process')
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('static/run.jpg'),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/paris.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Paris Pinnacle Booklet')
                        ],
                      )),
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/use.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Therapeutic Use Exemption')
                        ],
                      )),
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/athlete.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Athlete Biological Passport')
                        ],
                      )),
                  Container(
                      width: 180,
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 170, 179),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'static/risk.png',
                            height: 80,
                            width: 120,
                          ),
                          const Text('Risk of Natural Supplements')
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const Feedbackplz()));
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.feedback_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
