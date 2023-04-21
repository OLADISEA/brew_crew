import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser _userFromFirebase(User? user){
    return MyUser(uid: user!.uid);
      //user != null ? MyUser(uid: user!.uid) : null;
  }
Stream<MyUser> get user{
    return _auth.authStateChanges().map(_userFromFirebase);
}

  Future signInAnon() async{
    try{

      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
      return _userFromFirebase(user);
    }
    catch(e){

      return "ERROR";

    }
  }

  Future signOut() async{
    try {
      return await _auth.signOut();
    }catch(e){
      return null;

    }
    }
  
}