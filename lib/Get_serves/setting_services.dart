import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class setting_services extends GetxService {
  late FirebaseAuth auth;
  late bool curent;

  user_curent() {
    final user = auth.currentUser;
    if (user != null) {
      curent = true;
    } else {
      curent = false;
    }
  }

  Future<setting_services> init() async {
    await Firebase.initializeApp();
    auth = await FirebaseAuth.instance;
    user_curent();
    return this;
  }

  Future signUp(String email, String Password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: Password);
  }

  Future signin(String email, String Password) async {
    await auth.signInWithEmailAndPassword(email: email, password: Password);
  }
}
