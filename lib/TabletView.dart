import 'package:flutter/material.dart';

import 'MobileView.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<StatefulWidget> createState() => TableViewState();
}

class TableViewState extends State<TabletView> {
  // initialize a index
  int _selectedIndex = 0;

  final List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[

          // create a navigation rail
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            backgroundColor: Colors.green,
            destinations: const <NavigationRailDestination>
            [
              // navigation destinations
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                label: Text('Wishlist'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person_outline_rounded),
                label: Text('Account'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: Text('Cart'),
              ),
            ],
            useIndicator: false,
            selectedIconTheme: IconThemeData(color: Colors.white,size: 30.0),
            unselectedIconTheme: IconThemeData(color: Colors.black,size: 24.0),
            selectedLabelTextStyle: TextStyle(color: Colors.white,fontSize: 16.0, fontWeight: FontWeight.bold),
            unselectedLabelTextStyle: TextStyle(color: Colors.black,fontSize: 14.0),
          ),
          const VerticalDivider(thickness: 1, width: 2),
          Expanded(
            child: pages[_selectedIndex],
          )
        ],
      ),
    );
  }
}
