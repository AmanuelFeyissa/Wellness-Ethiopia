import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/providers/user_provider.dart';
import 'package:wellness_ethiopia/responsive/mobile_screen_layout.dart';
import 'package:wellness_ethiopia/responsive/responsive_layout.dart';
import 'package:wellness_ethiopia/responsive/web_screen_layout.dart';
import 'package:wellness_ethiopia/screens/get_started_page.dart';
import 'package:wellness_ethiopia/screens/login_screen.dart';
import 'package:wellness_ethiopia/screens/onboarding_screen.dart';
import 'package:wellness_ethiopia/utilities/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialise app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA-JytH6cA5ks2TDCGj3wu08VNCb6TdoNY",
          appId: "1:1090455101476:android:c02dda1e1a5871f764f8b1",
          messagingSenderId: "585119731880",
          projectId: "wellness-eth",
          storageBucket:
              'https://console.firebase.google.com/project/wellness-eth/storage/wellness-eth.appspot.com/files'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wellness Ethiopia',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              // Checking if the snapshot has any data or not
              if (snapshot.hasData) {
                // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
                return const ResponsiveLayout(
                  mobileScreenLayout: MobileScreenLayout(),
                  webScreenLayout: WebScreenLayout(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }

            // means connection to future hasnt been made yet
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return const OnboardingScreen();
          },
        ),
      ),
    );
  }
}
