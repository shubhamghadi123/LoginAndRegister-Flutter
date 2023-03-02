import 'package:flutter/material.dart';
import 'package:loginandregister/pages/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login And Register App",
          style: TextStyle(
            color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
            },
            child: const Text("LOGOUT"),
          ),
        ),
      ),
    );
  }
}