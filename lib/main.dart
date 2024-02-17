import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Responsive/Mobile_screen_layout.dart';
import 'package:instagram/Responsive/web_screen_layout.dart';

import 'Responsive/responsive_layout_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDsHEbwB0pcXDR_v4vyWn6HyxPu0z9OSHc",
        appId: "1:508743071029:web:0063b2a9135230808b887c",
        messagingSenderId: "508743071029",
        projectId: "instagram-94aa2",
        storageBucket: "instagram-94aa2.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark(),
      home: const ResponsiveLayout(
        MobileScreenLayout: MobileScreenLayout(),
        WebScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
