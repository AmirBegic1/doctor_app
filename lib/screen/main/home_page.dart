import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Image.asset(
            "assets/ProductArena_logo 1.png",
            width: 150,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        //body
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/doca.png"),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: const Text(
                                "My profile",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: const Text(
                                "Dr. Jon Doe",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Patient list for today",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 20.0,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/Rectangle 6.png"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/drugi.png"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/treci.png"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30.0),
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 50.0,
                    children: const [
                      Text(
                        "Alen K. \n16:00 - Common cold",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        "Amy F. \n13:30 Right Arm Pain",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        "Kim H. \n16:30 - Covid 19",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Tomorrow",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 20.0,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/andy.png"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/bell.png"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/fiona.png"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/nezir.png"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30.0),
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 50.0,
                    children: const [
                      Text(
                        "Andy A. \n08:00 - Common cold",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        "Bell B.. \n09:30 Deadache",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        "Fiona L. \n10:10 - Covid 19",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        "Nezir B. \n11:00 - Broken Heart",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
