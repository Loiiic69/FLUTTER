import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Login extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Component15.png'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black.withOpacity(1),
            Colors.transparent,
          ],
        ),
      ),
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  title: Text(''),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                body: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 130),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 120.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            ),
                          ),
                        ),
                        SizedBox(height:40), // Ajoutez un espace entre les champs
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 120.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: true, // Masque le texte du mot de passe
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 50), // Ajoutez un espace entre le champ de texte et le bouton
                        GestureDetector(
                          onTap: () {
                            // Gérer l'action du bouton "Login" ici
                          },
                          child: Image.asset(
                            'assets/images/loginbouton.png', // Chemin de l'image du bouton
                            width: 400, // Ajustez la largeur de l'image selon vos besoins
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Ajoutez ici le contenu de la page suivante (IntroPage2)
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
