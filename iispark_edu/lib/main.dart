import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iispark_edu/screen/spash_screen.dart';
import 'package:iispark_edu/screen/grade_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBHS40KIKuvn-XdgzZpOdt-p_Siy44Cun8",
      //authDomain: "YOUR_AUTH_DOMAIN",
      projectId: "iispark-edu",
      storageBucket: "iispark-edu.appspot.com",
      messagingSenderId: "1013218429781",
      appId: "1:1013218429781:android:abbeeed6f46ffd14fdbddc",
    ),
  );

  runApp(
    ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      title: "IIspark Edu",
    );
  }
}

class User with ChangeNotifier {
  UserCredential? _userId;

  UserCredential? get userId => _userId;

  void setUserId(UserCredential userId) {
    _userId = userId;
    notifyListeners();
  }
}

class UserProvider with ChangeNotifier {
  String? _userId;

  String? get userId => _userId;

  void setUserId(String userId) {
    _userId = userId;
    notifyListeners();
  }
}
