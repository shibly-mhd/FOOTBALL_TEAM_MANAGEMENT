import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerFilter extends StatelessWidget {
  PlayerFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header container
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  'filter player',
                  style: GoogleFonts.alata(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            // Search bar container
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(Icons.search, color: Colors.black54),
                    ),
                    Expanded(
                      child: TextFormField(),
                    ),
                  ],
                ),
              ),
            ),
            // Grid view of players
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: 6, // Number of players
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    // Sample data for player images and labels
                    final playerImages = [
                      'assets/legendary.jpeg',
                      'assets/lamineyamal.jpg',
                      'assets/defenders.webp',
                      'assets/lionel messi.jpeg',
                      'assets/middle.jpeg',
                      'assets/gk.jpg',
                    ];
                    final playerLabels = [
                      'legendary',
                      'top in class',
                      'defenders',
                      'forwards',
                      'middle',
                      'goal keeper',
                    ];

                    return Column(
                      children: [
                        // Image container
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/page11');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              playerImages[index],
                              height: 210,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        // Text label below image
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          color: Colors.grey[300],
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/page11');
                            },
                            child: Text(
                              playerLabels[index],
                              style: GoogleFonts.alata(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
