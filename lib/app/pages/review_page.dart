import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.warning_amber_outlined,size: 100,color: Colors.purple,),
              const Text("Il n'y pas encore d'avis",style: const TextStyle(color: Colors.purple),)
            ],
          ),
        ));
  }
}
