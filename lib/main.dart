// import 'package:devy/screens/profile/profile_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home/home_screen.dart';
import 'pages/splash/splash_screen.dart';
import 'routes.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .whenComplete(() {
    runApp(MyApp());
  });
}



class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Get the firebase user
  User? firebaseUser = FirebaseAuth.instance.currentUser;
  // Define a widget
  Widget? firstWidget;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(firebaseUser);

    if (firebaseUser != null) {
      firstWidget = const HomeScreen();
    } else {
      firstWidget = const SplashScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      /* initialRoute: SplashScreen.routeName, */
      home: firstWidget,
      routes: routes,
    );
  }
}
