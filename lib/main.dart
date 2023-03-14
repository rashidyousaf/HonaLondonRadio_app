import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/colors.dart';
import 'package:honalondon_radio/routes/routes.dart';
import 'package:provider/provider.dart';
import 'controllers/Image_picker_provider.dart';
import 'controllers/nav_provider.dart';
import 'controllers/radio_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => NavbarProvider()),
              ChangeNotifierProvider(create: (_) => RadioProvider()),
              ChangeNotifierProvider(create: (_) => ImagePcikerProvider()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: wColor,
              ),
              onGenerateRoute: Routes.onGenerateRoute,
              initialRoute: '/',
            ),
          );
        });
  }
}
