import 'package:flutter/material.dart';
import 'package:loginandregister/pages/reset_password.dart';

class FgPwd extends StatefulWidget {
  const FgPwd({Key? key}) : super(key: key);

  @override
  State<FgPwd> createState() => _FgPwdState();
}

class _FgPwdState extends State<FgPwd> {

  var emailTxt = TextEditingController();

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
            const Text("RESET PASSWORD", style: TextStyle(
                fontSize: 25, color: Colors.purpleAccent, fontFamily: 'OpenSans'),
            ),
            const SizedBox(
              height: 30,
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
              height: 25,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPwd()));
              },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )),
                ),
                child: const Text("NEXT", style: TextStyle(
                    fontSize: 18, fontFamily: 'OpenSans'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
