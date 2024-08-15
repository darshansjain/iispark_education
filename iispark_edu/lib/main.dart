import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iispark_edu/core/utils/size_utils.dart';
import 'package:iispark_edu/presentation/iphone_14_15_pro_max_1_screen/level.dart';
import 'package:iispark_edu/screen/ShopProd.dart';
import 'package:iispark_edu/screen/googleform_quiz.dart';
import 'package:iispark_edu/screen/home_screen.dart';
import 'package:iispark_edu/screen/spash_screen.dart';
import 'package:iispark_edu/theme/theme_helper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCGqxPv6GEmBM8gB0mCVdlJ8z6489Quoog",
      projectId: "iinspark-edu",
      storageBucket: "iispark-edu.appspot.com",
      messagingSenderId: "1277228618639",
      appId: "1:277228618639:android:3895305248817d8e6901fa",
    ),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');

  runApp(
    ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme, // Ensure you have a method to build your theme
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          title: "IIspark Edu",
        );
      },
    );
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
