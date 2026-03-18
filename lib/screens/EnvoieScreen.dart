import 'package:flutter/material.dart';
import 'package:paiement_app/screens/QrcodeScreen.dart';

class Envoiescreen extends StatelessWidget {
  const Envoiescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF0F8FF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF7C3AED), // violet clair
                  Color(0xFF33006F), // violet foncé
                ],
              ),
            ),
          ),

          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 32, color: Colors.white),
          ),
          title: Text(
            "Envoyer de l'argent",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),

      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.03),
                Text(
                  'Contact recents',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              children: [
                SizedBox(width: width * 0.03),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Qrcodescreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'La mano',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),

                SizedBox(width: width * 0.03),

                // contact 2
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Qrcodescreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'Paco paco',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                // sep
                SizedBox(width: width * 0.03),
                //contact 3
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Qrcodescreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'phino Mamas',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            //paarue 2
            Row(
              children: [
                SizedBox(width: width * 0.03),
                Text(
                  'Numero de telephone',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            //container
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.only(top: 1, bottom: 10),
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                  left: 40,
                  right: 30,
                ),
                height: height * 0.1,
                width: width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone_outlined, size: 32),
                    SizedBox(width: width * 0.03),
                    Text(
                      '77 386 69 30',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //3
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.03),
                Text(
                  'Montant',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.03),

            //fiel
            TextField(
              keyboardType: TextInputType.phone,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Entrez le montant",
                labelText: "Montant",
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.money, color: Colors.black),
                suffixIcon: Icon(Icons.check, color: Colors.green),
                filled: true,
                fillColor: Colors.white.withOpacity(0.15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: height * 0.03),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF7C3AED), // couleur fond
                foregroundColor: Colors.white, // couleur texte
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                elevation: 5,
                minimumSize: Size(double.infinity, 55), // pleine largeur
              ),
              child: Text(
                "Envoyer",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
