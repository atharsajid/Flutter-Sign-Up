import 'package:flutter/material.dart';
import 'main.dart';
import 'signin.dart';

class ThirdPage extends StatefulWidget {
  static const routename = "Create Account";

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CreateAccount(),
      routes: {
        MyApp.routename: (_) => const MyApp(),
        SecondPage.routename: (_) => SecondPage(),
      },
    );
  }
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final username = TextEditingController();
  final email = TextEditingController();
  final dateofbirth = TextEditingController();
  final password = TextEditingController();
  final repassword = TextEditingController();
  bool passwordvisible = true;
  bool value = false;

  final input = OutlineInputBorder(
    borderRadius: BorderRadius.circular(32),
    borderSide: const BorderSide(
      color: Colors.blue,
      width: 2,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/back2.png"),
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
              SizedBox(
                height: 120,
                child: Center(child: Image.asset("images/logo.png")),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                          enabledBorder: input,
                          focusedBorder: input,
                          label: const Text("User Name"),
                          prefixIcon: const Icon(Icons.account_circle)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                          enabledBorder: input,
                          focusedBorder: input,
                          label: const Text("Email"),
                          prefixIcon: const Icon(Icons.email)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        enabledBorder: input,
                        focusedBorder: input,
                        label: const Text("Password"),
                        prefixIcon: const Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordvisible = !passwordvisible;
                              });
                            },
                            icon: const Icon(Icons.visibility)),
                      ),
                      obscureText: passwordvisible,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: repassword,
                      decoration: InputDecoration(
                        enabledBorder: input,
                        focusedBorder: input,
                        label: const Text("Re-enter Password"),
                        prefixIcon: const Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordvisible = !passwordvisible;
                            });
                          },
                          icon: const Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: passwordvisible,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      title: const Text(
                        "Allow Terms & Conditions.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        minimumSize: const Size(200, 50),
                        primary: const Color(0xFF1475FF),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          username.clear();
                          email.clear();
                          password.clear();
                          repassword.clear();
                        });
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SecondPage.routename);
                    },
                    child: const Text(
                      "Sign In",
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
