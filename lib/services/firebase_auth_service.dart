

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService{

  FirebaseAuth auth = FirebaseAuth.instance;

  Future login(String email, String password) async{
    await auth.signInWithEmailAndPassword(email: email, password: password);
    // try{
    //   await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    //   return true;
    // }on FirebaseAuthException catch(e){
    //   return e.message;
    // }
  }
  Future signup (String email, String password) async{
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    
  }

    Future logininwithgoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential myCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(myCredential);

    debugPrint(user.user?.displayName);
  }

  signInWithGoogle() {}
}


