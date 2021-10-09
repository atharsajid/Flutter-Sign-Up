import 'package:flutter/material.dart';
import 'package:login_page/createaccount.dart';
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
      home: const Signin(),
      routes: {
        MyApp.routename: (_) => const MyApp(),
        ThirdPage.routename: (_) => ThirdPage(),
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
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32),
  );
  bool value = false;
  bool password = true;
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
              SizedBox(
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
                      icon: const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          password = !password;
                        });
                      },
                    ),
                  ),
                  obscureText: password,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 23),
                child: ListTile(
                  leading: Checkbox(
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  title: const Text(
                    "Remeber Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      shape: shape,
                      primary: const Color(0xFF1475FF),
                    ),
                    onPressed: () {
                      setState(() {
                        emailcontroller.clear();
                        passwordcontroller.clear();
                      });
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Spacer(),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(160, 50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      shape: shape,
                      side: const BorderSide(
                        color: Color(0xFF1475FF),
                        width: 3,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Forget Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1475FF),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Sign in with Social Media",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/facebook.png"),
                  Image.asset("images/twiter.png"),
                  Image.asset("images/linkdin.png"),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(ThirdPage.routename);
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(
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
