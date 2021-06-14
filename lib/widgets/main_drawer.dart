import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(
        fontSize: 24,
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.bold,
      ),),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // SizedBox(height: 22,),
          Container(
            height:120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
        color: Theme.of(context).primaryColor,
            child: Text('Cooking !', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).accentColor

            ),),
          ),
          SizedBox(height: 20,),
          buildListTile('Meal', Icons.restaurant, (){Navigator.of(context).pushReplacementNamed('/');}),
          buildListTile('Filters', Icons.settings, (){Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);}),
        ],
      ),
    );
  }
}
