import 'package:antidoping/pages/home_page.dart';
import 'package:antidoping/screens/games.dart';
import 'package:antidoping/screens/login.dart';
import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  const Resources({super.key});

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  List<String> data = [
    "NADA India Doping Control(Watch Now)",
    "SLSA Anti-Doping Education(Watch Now)",
    "Drugs in sport:can science stop the cheat(Watch Now)",
  ];
  List<Image> pics = [
    Image.asset(
      'static/v1.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'static/v2.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'static/v3.jpeg',
      fit: BoxFit.cover,
    ),
  ];
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: const Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          TextButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (_)=> const Resources()));
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                'Resources',
                style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Video Library',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 200,
                          height: 180,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'static/v1.jpeg',
                                    height: 140,
                                    width: 150,
                                  )),
                              Text(
                                'NADA India Doping Control(Watch Now)',
                                style: TextStyle(color: Colors.blue.shade600),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 200,
                          height: 180,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'static/v2.jpeg',
                                    height: 140,
                                    width: 150,
                                  )),
                              Center(
                                  child: Text(
                                      'SLSA Anti-Doping Education(Watch Now)',
                                      style: TextStyle(
                                          color: Colors.blue.shade600)))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 200,
                          height: 180,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'static/v3.jpeg',
                                    height: 140,
                                    width: 150,
                                  )),
                              Center(
                                  child: Text(
                                      'Drugs in sport:can science stop the cheat(Watch Now)',
                                      style: TextStyle(
                                          color: Colors.blue.shade600)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0, left: 10),
                child: Text(
                  'Podcasts/Interviews',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 280,
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 200,
                          height: 230,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'static/p1.jpeg',
                                    height: 140,
                                    width: 150,
                                  )),
                              Text(
                                'Interview with Anna Thorstenson - The Athletes Anti-Doping ombuds',
                                style: TextStyle(color: Colors.blue.shade600),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 200,
                          height: 230,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'static/p2.jpeg',
                                    height: 140,
                                    width: 150,
                                  )),
                              Center(
                                  child: Text(
                                      'Interview with David Lappartient on anti-doping proceedings involving Chris Froome',
                                      style: TextStyle(
                                          color: Colors.blue.shade600)))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 200,
                          height: 230,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'static/p3.jpeg',
                                    height: 140,
                                    width: 150,
                                  )),
                              Center(
                                  child: Text(
                                      'Interview: National Sports Institute on anti-doping',
                                      style: TextStyle(
                                          color: Colors.blue.shade600)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Glossary',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Anabolic Steroids',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                              'Synthetic substances that mimic the effects of the male hormone testosterone, commonly used to enhance muscle mass and performance.')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Blood Doping',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                              'A method of boosting the number of red blood cells to enhance athletic performance.')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'WADA',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                              'The World Anti-Doping Agency, responsible for promoting, coordinating, and monitoring the fight against doping in sports.'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Image.asset('static/ball.jpg')
            ],
          ),
        ),
      ),
    );
  }
}
