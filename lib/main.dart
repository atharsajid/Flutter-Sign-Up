import 'package:flutter/material.dart';
import 'signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const routename = "Main  Page";

  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {SecondPage.routename: (_) => SecondPage()},
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/back.png"),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 150,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 150,
                    child: Image.asset("images/logo.png"),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Flutter & Dart Program",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Learn to Create Your Application",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.person),
                label: const Text("Sign In"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.person),
                label: const Text("Create Account"),
              ),
              Container(
                height: 120,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                  "Now! Quick Login With Touch ID",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Image.asset("images/touch.png"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamed(SecondPage.routename);
            },
          ),
        ),
      ),
    );
  }
}
