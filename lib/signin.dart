import 'package:flutter/material.dart';
import 'main.dart';

class SecondPage extends StatefulWidget {
  static const routename = "Sign IN";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
      routes: {
        MyApp.routename: (_) => MyApp(),
      },
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/back2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SizedBox(
                  height: 120,
                  child: Image.asset("images/logo.png"),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    label: const Text("Email"),
                    prefixIcon: const Icon(Icons.email),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => emailcontroller.clear(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.vpn_key),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => passwordcontroller.clear(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.radio_button_off),
                      label: const Text("Remember Password"),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                  ),
                  const Spacer()
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sign In"),
                  ),
                  const Spacer(),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Forget Password"),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "Sign in with Social Media",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.facebook,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.circle_notifications_outlined,
                    size: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't Have account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    " Sign Up",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
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
              Navigator.of(context).pushNamed(MyApp.routename);
            },
          ),
        ),
      ),
    );
  }
}
