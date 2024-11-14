import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_teammanaging/functions/dbfunctions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class playerSquadview extends StatelessWidget {
  playerSquadview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/page9');
                  },
                  child: Text(
                    'Squad View',
                    style: GoogleFonts.aclonica(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/page10');
            },
            child: Icon(
              Iconsax.activity,
              size: 50,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/page13');
            },
            child: Icon(
              Iconsax.building,
              size: 50,
              color: Colors.black,
            ),
          ),
        ],
      ),

      //
      body: ValueListenableBuilder(
        valueListenable: Playernotifier,
        builder: (context, value, child) {
          return GridView.builder(
            itemCount: value.length, // Number of image items
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final data = value[index];
              return Container(
                child: Text(data.name!),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                  border: index == 0
                      ? Border.all(
                          color: Colors.blue,
                          width: 2) // Border for the selected item
                      : null,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
