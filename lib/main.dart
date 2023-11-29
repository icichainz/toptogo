import 'package:flutter/material.dart';
import 'package:keeper/app/pages/add_review.dart';
import 'package:keeper/app/pages/hot_page.dart';
import 'package:keeper/app/pages/search_page.dart';
import 'package:keeper/utils/shared_pref.dart';
import './app/pages/home_page.dart';
import './app/pages/review_page.dart';
import './app/pages/account_page.dart';
import './app/pages/explore_page.dart';

void main()  {
  // Initialize the shared preferences services.
  SharedPref.init() ;
  // Run the application.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TopTrip',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'TopTrip'),
     
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIdex = 0;

  void changeIndex(index) {
    setState(() {
      currentIdex = index;
    });
  }

  final pagesList = const [
    HomePage(),
    ExplorePage(),
    HotPage(),
    ReviewPage(),
    AccountPage()
  ];

  final navItem = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined), label: 'Acceuille'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.explore_outlined), label: 'Explorer'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.local_fire_department_outlined), label: 'Raccourcis'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.edit_outlined), label: 'Avis'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle_outlined), label: 'Compte')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Builder(builder: (context) {
        if (currentIdex == 2) {
          return FloatingActionButton.extended(
            onPressed: () {
              // Navigate to add reviw web page
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AddReviewPage()));
            },
            label: const Text("Déposé un avis"),
            icon: const Icon(Icons.add_outlined),
          );
        }

        if (currentIdex == 0) {
          return FloatingActionButton.extended(
            onPressed: () {
              // Navigate to add review web page
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SearchPage())) ;
            },
            label: const Text("Demander un guide"),
            icon: const Icon(Icons.add_outlined),
          );
        }

        return const SizedBox.shrink();
      }),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
        //toolbarHeight: MediaQuery.of(context).size.height * 0.15,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        items: navItem,
        currentIndex: currentIdex,
        onTap: (index) => changeIndex(index),
      ),
      body: Container(child: pagesList[currentIdex!]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
