import './screens/filter_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Esta es la raiz de la aplicacion
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Colors.white70,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Colors.green),
              bodyText2: TextStyle(color: Colors.orange),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotCondense',
                fontWeight: FontWeight.bold,
              ),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      //Se crean los nombres de las rutas para el cambio de vista
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName:(context)=>CategoryMealsScreen(),
        MealDetailScreen.routeName: (context)=>MealDetailScreen(),
        FilterScreen.routeName: (context)=>FilterScreen(),
      },
     //utilizarlo para que si la aplicacion falla devuelva al menos una pagina de error
     // onUnknownRoute: ,
    );
  }
}

//Este widget es la pagina principal de la aplicacion
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Metodo que relanza la aplicacion cada vez que se llama al setState
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
