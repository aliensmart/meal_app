import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/Categories_screen.dart';
import './screens/Category_meals.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riibo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(fontSize: 18.0, fontFamily: 'RobotoCondensed'))),
      // home: CategoriesScreen(),
      // initialRoute: '/home', if we wanted to use this as initial route the default is '/'
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen()
      },
      // onGenerateRoute: (settings) {
      //   //help the user to go to the categories screen if the user tries to go to a page that does not exist;
      //   print(settings.arguments);
      //   return MaterialPageRoute(
      //     builder: (context) => CategoriesScreen(),
      //   );
      // },
      // onUnknownRoute: (settings) {
      //   //act like the 404 page
      //   return MaterialPageRoute(
      //     builder: (context) => CategoriesScreen(),
      //   );
      // },
    );
  }
}
