import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(color:Colors.grey.shade200, child: ListTile(title: Text("Gestion de compte "),leading: Icon(Icons.account_circle_outlined,size: 50.0,color: Colors.deepPurple,),),)
    ],);
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


