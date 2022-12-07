import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/list.dart';
import 'page/cart.dart';
import 'page/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.white,
          primarySwatch: null),
      home: const PageContainer(
        title: 'ZALORA',
      ),
    );
  }
}

Widget _searchTextField() {
  return TextField(
    autofocus: true, //Display the keyboard when TextField is displayed
    cursorColor: Colors.black,
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    textInputAction:
        TextInputAction.search, //Specify the action button on the keyboard
    decoration: InputDecoration(
      //Style of TextField
      enabledBorder: UnderlineInputBorder(
          //Default TextField border
          borderSide: BorderSide(color: Colors.black)),
      focusedBorder: UnderlineInputBorder(
          //Borders when a TextField is in focus
          borderSide: BorderSide(color: Colors.black)),
      hintText: 'Search', //Text that is displayed when nothing is entered.
      hintStyle: TextStyle(
        //Style of hintText
        color: Colors.black26,
        fontSize: 20,
      ),
    ),
  );
}

class PageContainer extends StatefulWidget {
  final String title;

  const PageContainer({Key? key, required this.title}) : super(key: key);

  @override
  State<PageContainer> createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  int selectedIndex = 0;
  bool _searchBoolean = false;

  void changeSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void changeToCart() {
    setState(() {
      selectedIndex = 2;
    });
  }

  void toggleSearchBar() {
    setState(() {
      //add
      _searchBoolean = !_searchBoolean;
    });
  }

  List content = [Home(), ListShop(), Cart(), Profil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: !_searchBoolean
                ? Text(
                    widget.title,
                    style: TextStyle(color: Colors.black),
                  )
                : _searchTextField(),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              //add
              IconButton(
                  icon:
                      !_searchBoolean ? Icon(Icons.search) : Icon(Icons.clear),
                  color: Colors.black,
                  onPressed: toggleSearchBar),
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.black,
                  onPressed: changeToCart),
            ]),
        body: content[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              // icon: CircleAvatar(
              //   backgroundImage: NetworkImage(
              //       "https://static.vecteezy.com/system/resources/thumbnails/005/544/770/small/profile-icon-design-free-vector.jpg"),
              //   radius: 15,
              // ),
              icon: Icon(Icons.people),
              label: "Profil",
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: changeSelectedIndex,
        ));
  }
}
