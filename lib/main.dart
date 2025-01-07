import 'package:flutter/material.dart';
import 'package:wedding_card/core/services/firebase_service.dart';
import 'package:wedding_card/core/utils/routes.dart';
import 'package:wedding_card/core/utils/service_locator.dart';


void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.init();
    setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // fontFamily: "Montserrat",
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
          ),
    );
  }
}
