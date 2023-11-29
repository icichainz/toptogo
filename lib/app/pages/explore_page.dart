import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(Icons.warning_amber_outlined,size: 100,color: Colors.purple,),
          const Text("Il n'y pas encore d'événts disponibles",style: const TextStyle(color: Colors.purple),)
        ],
      ),
    ));
  }
}
