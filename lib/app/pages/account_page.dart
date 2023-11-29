import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Gestion de compte
        Card(
          color: Colors.grey.shade100,
          child: const ListTile(
            title: Text("Gestion de compte "),
            leading: Icon(
              Icons.account_circle_outlined,
              size: 30.0,
              color: Colors.deepPurple,
            ),
          ),
        ),
        // Recompense et programme de fid&lité
        Card(
          color: Colors.grey.shade100,
          child: const ListTile(
            title: Text("Recompense et fidélité"),
            leading: Icon(
              Icons.money,
              size: 30.0,
              color: Colors.deepPurple,
            ),
          ),
        ),
        // Questions posés au étavlissements.
        Card(
          color: Colors.grey.shade100,
          child: const ListTile(
            title: Text("Questions possées au établisements"),
            leading: Icon(
              Icons.question_answer_outlined,
              size: 30.0,
              color: Colors.deepPurple,
            ),
          ),
        ),
        // Aide 
        Card(
          color: Colors.grey.shade100,
          child: const ListTile(
            title: Text("Aides"),
            leading: Icon(
              Icons.help_outline,
              size: 30.0,
              color: Colors.deepPurple,
            ),
          ),
        ),

        //
          Card(
          color: Colors.grey.shade100,
          child: const ListTile(
            title: Text("Déconnecté",style: TextStyle(color: Colors.redAccent),),
            leading: Icon(
              Icons.help_outline,
              size: 30.0,
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }
}


/*
* - Recompense et programme de fidélité.
* - Commentainre
* - Question posés au établisemment.
* - Aide :
*   - Contacter le service client.
*   - Centre de ressource en matiere de sécurité.
*    - Reglement de litige.
*   - A découvrir :
*       - Offres
*        - Transports et location
*        - Article de voyage
*  - Parametres de documents juridique.
*
* - Se déconnecté.
*
*
* */


