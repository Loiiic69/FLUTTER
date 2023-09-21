import 'package:flutter/material.dart';
import 'package:namer_app/pages/Login/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage4 extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background4.png'),
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
                    padding: EdgeInsets.only(top: 250.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lora',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lora',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
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
                children: [
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      // Lorsque le bouton "Get Started" est appuyé, naviguez vers la page de connexion (LoginPage)
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/getstarted.png',
                      width: 500,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
