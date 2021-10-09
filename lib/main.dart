import 'package:flutter/material.dart';
import 'signin.dart';
import 'createaccount.dart';

void main() {
  runApp(const MyApp());
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
      home:const MainPage(),
      routes: {SecondPage.routename: (_) => SecondPage(),
      ThirdPage.routename:(_)=>ThirdPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final texts = const TextStyle(
    color: Colors.blue,
    fontSize: 20,
  );
  final elevated = OutlinedButton.styleFrom(
    minimumSize: const Size(300, 50),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/back.png"), fit: BoxFit.cover),
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
              const SizedBox(
                height: 25,
              ),
              OutlinedButton(
                style: elevated,
                onPressed: () {
                  Navigator.of(context).pushNamed(SecondPage.routename);
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              OutlinedButton(
                style: elevated,
                onPressed: () {
                  Navigator.of(context).pushNamed(ThirdPage.routename);
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 60,
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
              
            },
          ),
        ),
      ),
    );
  }
}
