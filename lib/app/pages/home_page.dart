import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.4,
          width: double.infinity,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                //width: ,
                //height: height * 0.7,
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: const Text("He'd have you all unravel at the"),
              ),
            ],
          ),
        ),
        Container(
          height: height * 0.15,
          width: width,
          color: Colors.deepPurple,
          child: const Center(child: const Text("Banniere publicitaire",style: TextStyle(color: Colors.white),)),
        ),
        Container(
          height: height * 0.15,
          width: width,
          color: Colors.orange,
          child: const Center(child: const Text("Les recommandations",style: TextStyle(color: Colors.white),)),
        )
      ],
    );
  }
}
