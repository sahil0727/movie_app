import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/providers/movie_category_provider.dart';
import 'package:movie_app/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MovieCategoryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MovieMania',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
