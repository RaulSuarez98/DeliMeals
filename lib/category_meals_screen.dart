import 'package:flutter/material.dart';


//Pagina creada de manera dinamica para cada categoria de comida
class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';

  // final String categoryId;
  // final String categoryTitle;
  //
  // CategoryMealsScreen(this.categoryId,this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    //mete en una variable el mapeado de la id y titulo de cada clase de comida para hacer la vista
    final routeArgs =
    ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(itemBuilder: (context, index) {

        }, itemCount:,)
    );
  }
}
