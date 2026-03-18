
import 'package:flutter/material.dart';

class Historiquescreen extends StatelessWidget {
  const Historiquescreen({super.key});

  // Données mockées
  final List<Map<String, dynamic>> transactions = const [
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 10h12", 'montant': '-15000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
    {'nom': 'Paco paco', 'heure': "Hier 22h52", 'montant': '+35000', 'entrant': true},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 10h12", 'montant': '-15000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
    {'nom': 'Seraphe Mamass', 'heure': "Aujourd'hui 08h27", 'montant': '-5000', 'entrant': false},
  ];

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
                colors: [Color(0xFF7C3AED), Color(0xFF33006F)],
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, size: 32, color: Colors.white),
          ),
          title: Text(
            "Historique complet",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Historique',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Liste des transactions
            ...transactions.map((t) => Column(
              children: [
                _buildTransactionItem(
                  context: context,
                  nom: t['nom'],
                  heure: t['heure'],
                  montant: t['montant'],
                  entrant: t['entrant'],
                  width: width,
                  height: height,
                ),
                SizedBox(height: height * 0.01),
              ],
            )),

            SizedBox(height: height * 0.03),

            // Menu paramètres
            _buildMenuItem(
              icon: Icons.settings,
              label: "Paramètres du compte",
              iconColor: Color(0xFF7C3AED),
              onTap: () {},
            ),
            SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.shield_outlined,
              label: "Sécurité et confidentialité",
              iconColor: Color(0xFF7C3AED),
              onTap: () {},
            ),
            SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.help_outline,
              label: "Aide et support",
              iconColor: Color(0xFF7C3AED),
              onTap: () {},
            ),
            SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.logout,
              label: "Déconnexion",
              iconColor: Colors.red,
              labelColor: Colors.red,
              showArrow: false,
              bgColor: Colors.red.withOpacity(0.1),
              onTap: () {},
            ),

            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text("PayWave Sénégal", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Text("Version 1.0.0", style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionItem({
    required BuildContext context,
    required String nom,
    required String heure,
    required String montant,
    required bool entrant,
    required double width,
    required double height,
  }) {
    final color = entrant ? Colors.green : Colors.red;
    final icon = entrant ? Icons.call_received : Icons.call_made;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        fixedSize: Size(width - 20, 80),
        padding: EdgeInsets.symmetric(horizontal: 20),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.08,
            width: width * (1 / 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(icon, color: color, size: 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nom, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
              Text(heure, style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          Text(montant, style: TextStyle(color: color)),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required Color iconColor,
    Color? labelColor,
    Color? bgColor,
    bool showArrow = true,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: bgColor ?? iconColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: iconColor, size: 20),
            ),
            SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: labelColor ?? Color(0xFF7C3AED),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            if (showArrow) Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}