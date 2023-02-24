import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginandregister/pages/home.dart';
import 'package:loginandregister/pages/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var emailTxt = TextEditingController();
  var passTxt = TextEditingController();
  var confirmPassTxt = TextEditingController();

  bool _obscureTextPass = true;
  bool _obscureTextCinfirmPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 20,
            ),
            const Text("REGISTER", style: TextStyle(
                fontSize: 25, color: Colors.purpleAccent, fontFamily: 'OpenSans'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: emailTxt,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                        Icons.email_rounded
                    ),
                    hintText: "Email ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: passTxt,
                obscureText: _obscureTextPass,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                        Icons.password_rounded
                    ),
                    suffixIcon: GestureDetector(onTap: () {
                      setState(() {
                        _obscureTextPass = !_obscureTextPass;
                      });
                    },
                    child: Icon(_obscureTextPass ?Icons.visibility_rounded :Icons.visibility_off_rounded),
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: confirmPassTxt,
                obscureText: _obscureTextCinfirmPass,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                        Icons.password_rounded
                    ),
                    suffixIcon: GestureDetector(onTap: () {
                      setState(() {
                        _obscureTextCinfirmPass = !_obscureTextCinfirmPass;
                      });
                    },
                      child: Icon(_obscureTextCinfirmPass ?Icons.visibility_rounded :Icons.visibility_off_rounded),
                    ),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(onPressed: () {
                if (passTxt.text!=confirmPassTxt.text){
                  Fluttertoast.showToast(msg: "Password did not match");
                }
                else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                }
              },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.blueAccent;
                      }
                      return Colors.indigoAccent;
                    }),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )),
                  ),
                  child: const Text("REGISTER", style: TextStyle(
                    fontSize: 18, fontFamily: 'OpenSans', color: Colors.white),
                  ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? ", style: TextStyle(
                    fontSize: 16, fontFamily: 'OpenSans'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text("Login", style: TextStyle(
                      fontSize: 17, color: Colors.deepOrangeAccent, fontFamily: 'OpenSans'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Or"),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
              },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.redAccent;
                    }
                    return Colors.white30;
                  }),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )),
                ),
                child: const Text("SIGN-UP WITH GOOGLE", style: TextStyle(
                    fontSize: 15, fontFamily: 'OpenSans', color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
              },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.greenAccent;
                    }
                    return Colors.white30;
                  }),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )),
                ),
                child: const Text("SIGN-UP WITH FACEBOOK", style: TextStyle(
                    fontSize: 15, fontFamily: 'OpenSans', color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
