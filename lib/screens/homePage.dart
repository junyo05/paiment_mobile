import 'package:flutter/material.dart';
import 'package:paiement_app/screens/EnvoieScreen.dart';
import 'package:paiement_app/screens/HistoriqueScreen.dart';
import 'package:paiement_app/screens/QrcodeScreen.dart';
import 'package:paiement_app/screens/ReceiveScreen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // Tailles responsive ,
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF0F8FF),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 70,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                height: height * 0.65,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF7C3AED), // violet clair en haut
                      Color(0xFF33006F), // violet foncé en bas
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Bonjours,',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Yo bamba',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: height * 0.06,
                          width: width * 0.13,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                      ],
                    ),

                    //separration
                    SizedBox(height: height * 0.06),

                    //container interne
                    Container(
                      height: height * 0.38,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                      ),

                      //design interne
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Solde disponible',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.visibility_outlined,

                                  size: 30,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '527 392 FCFA',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: height * 0.02),
                            Divider(
                              color: Colors.white.withOpacity(0.3),
                              thickness: 1,
                              indent: 10, // marge gauche
                              endIndent: 10, // marge droite
                            ),

                            SizedBox(height: height * 0.02),

                            //partie 2
                            Row(
                              children: [
                                Icon(
                                  Icons.card_membership_outlined,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' carte virtuelle',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                Text(
                                  '5436 **** **** 2341',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.30,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.30,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'EXP: 11/24',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.50),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //separation
              SizedBox(height: height * 0.05),

              // navigation
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Envoiescreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: height * 0.1,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.send_to_mobile,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text('Envoyer'),
                      ],
                    ),

                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Receivescreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: height * 0.1,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.save_alt,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text('Recevoir'),
                      ],
                    ),

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
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.qr_code,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text('QR code'),
                      ],
                    ),

                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Historiquescreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: height * 0.1,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.history,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text('Historique'),
                      ],
                    ),
                  ],
                ),
              ),

              //separation
              SizedBox(height: height * 0.05),

              //historique
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                        child: Text(
                          'Transactions recentes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            // navigation ou action
                          },
                          child: Text(
                            "voir tout...",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              // decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // bouton raccourcis historique ou pas
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width - 20,
                        80,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * (0.08),
                          width: width * (1 / 6),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.call_made,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: width * (0.002)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seraphe Mamass',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Aujourd'hui 10h12",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: width * (0.1000)),
                        // Icon(
                        //   Icons.arrow_forward_ios,
                        //   size: 22,
                        //   color: Colors.grey,
                        // ),
                        Text('-15000', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),

                  // separation
                  SizedBox(height: height * 0.01),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width - 20,
                        80,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * (0.08),
                          width: width * (1 / 6),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.call_made,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: width * (0.002)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seraphe Mamass',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Aujourd'hui 08h27",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: width * (0.1000)),
                        // Icon(
                        //   Icons.arrow_forward_ios,
                        //   size: 22,
                        //   color: Colors.grey,
                        // ),
                        Text('-5000', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),

                  // separation
                  SizedBox(height: height * 0.01),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width - 20,
                        80,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * (0.08),
                          width: width * (1 / 6),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.call_received,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: width * (0.002)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Paco paco',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Hier 22h52",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: width * (0.1000)),
                        // Icon(
                        //   Icons.arrow_forward_ios,
                        //   size: 22,
                        //   color: Colors.grey,
                        // ),
                        Text('+35000', style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),

                  // separation
                  SizedBox(height: height * 0.01),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width - 20,
                        80,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * (0.08),
                          width: width * (1 / 6),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.call_made,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: width * (0.002)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seraphe Mamass',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Aujourd'hui 10h12",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: width * (0.1000)),
                        // Icon(
                        //   Icons.arrow_forward_ios,
                        //   size: 22,
                        //   color: Colors.grey,
                        // ),
                        Text('-15000', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
