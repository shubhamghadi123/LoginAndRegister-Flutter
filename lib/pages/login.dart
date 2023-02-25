import 'package:flutter/material.dart';
import 'package:loginandregister/pages/forgot_password.dart';
import 'package:loginandregister/pages/home.dart';
import 'package:loginandregister/pages/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailTxt = TextEditingController();
  var passTxt = TextEditingController();

  bool _obscureTextPass = true;

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
            const Text("LOGIN", style: TextStyle(
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
              height: 20,
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
              height: 10,
            ),
            SizedBox(
              width: 310,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FgPwd()));
                    },
                    child: const Text("Forgot Password?", style: TextStyle(
                        fontSize: 15, color: Colors.deepPurple, fontFamily: 'OpenSans'),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                        return Colors.blueAccent;
                      }
                      return Colors.indigoAccent;
                    }),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )),
                  ),
                  child: const Text("LOGIN", style: TextStyle(
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
                const Text("Don't have an account? ", style: TextStyle(
                    fontSize: 16, fontFamily: 'OpenSans'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                  },
                  child: const Text("Register", style: TextStyle(
                      fontSize: 17, color: Colors.deepOrangeAccent, fontFamily: 'OpenSans'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Or"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                width: 170,
                height: 45,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.redAccent;
                      }
                      return Colors.red.shade400;
                    }),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )),
                  ),
                  child: const Text("GOOGLE", style: TextStyle(
                      fontSize: 15, fontFamily: 'OpenSans', color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 170,
                height: 45,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.greenAccent;
                      }
                      return Colors.green.shade400;
                    }),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )),
                  ),
                  child: const Text("FACEBOOK", style: TextStyle(
                      fontSize: 15, fontFamily: 'OpenSans', color: Colors.white),
                  ),
                ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
