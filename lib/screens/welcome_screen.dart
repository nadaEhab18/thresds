import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Pattern.png'),

            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff393939),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(
                        // width: 10,
                        color: Color(0xffB2B3B2)),
                  ),
                ),
                onPressed: () async {
                  await signInWithGoogle();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Log in with Instagram',
                          style: TextStyle(
                            color: Color(0xffB2B3B2),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: [
                            Text(
                              'sharan3102',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/images/Verified.png',
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Image.asset(
                      'assets/images/google.png',
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Switch accounts',
              style: TextStyle(
                color: Color(0xffB2B3B2),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
