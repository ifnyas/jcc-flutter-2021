import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.red,
            inputDecorationTheme:
                const InputDecorationTheme(border: OutlineInputBorder())),
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.16),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        'Sanber Flutter',
                        style: TextStyle(
                          color: Colors.primaries[0],
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.headline4?.fontSize ??
                                  28,
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.12,
                    height: MediaQuery.of(context).size.height * 0.12,
                    margin: const EdgeInsets.fromLTRB(0, 24, 0, 24),
                    child: Image.asset("assets/img/flutter.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: MediaQuery.of(context).size.width * 0.16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.16,
                        8,
                        MediaQuery.of(context).size.width * 0.16,
                        24),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text("Forgot Password"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 48)),
                        elevation: MaterialStateProperty.all(0)),
                    child: const Text("Login"),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text("Register"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
