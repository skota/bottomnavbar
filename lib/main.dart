import "package:flutter/material.dart";

void main() => runApp(NavApp());

class NavApp extends StatefulWidget {
  NavApp({Key key}) : super(key: key);
  @override
  _NavApp createState() => _NavApp();
}

class _NavApp extends State {
  // "home page" is currently active
  var _currentPage = 0;

  //add actual pages here..for example
  // _pages = [ _showHome(), _showGraphs(), _showSettings()]
  var _pages = [
    Text("Home Page"),
    Text("Graphs page"),
    Text("Settings page"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Navbar",
      home: Scaffold(
        body: Center(child: _pages.elementAt(_currentPage)),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.trending_up), title: Text("Graphs")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text("Settings")),
            ],
            currentIndex: _currentPage,
            fixedColor: Colors.blue,
            onTap: (int inIndex) {
              setState(() {
                print("Showing page ${_pages[inIndex]}");
                _currentPage = inIndex;
              });
            }),
      ),
    );
  }
}

//

// settings
