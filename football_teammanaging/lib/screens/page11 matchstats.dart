import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class matchStats extends StatelessWidget {
  matchStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'match statistics',
                    style: GoogleFonts.alata(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Chart Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Pie Chart
                      PieChart(
                        PieChartData(
                          sections: _getSections(),
                          centerSpaceRadius: 40,
                          sectionsSpace: 2,
                          borderData: FlBorderData(show: false),
                        ),
                      ),
                      // Statistics Text
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'win : 20',
                              style: GoogleFonts.alata(
                                  fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              'lose : 8',
                              style: GoogleFonts.alata(
                                  fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              'draw : 11',
                              style: GoogleFonts.alata(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Legend
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildLegendItem(Colors.deepOrange, 'lose', Colors.red),
                      _buildLegendItem(Colors.grey, 'draw', Colors.grey),
                      _buildLegendItem(Colors.lightGreen, 'win', Colors.green),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/page12');
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 50,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<PieChartSectionData> _getSections() {
  return [
    PieChartSectionData(
      color: Colors.lightGreen,
      value: 20,
      title: '',
      radius: 60,
    ),
    PieChartSectionData(
      color: Colors.red,
      value: 8,
      title: '',
      radius: 60,
    ),
    PieChartSectionData(
      color: Colors.grey,
      value: 11,
      title: '',
      radius: 60,
    ),
  ];
}

Widget _buildLegendItem(Color color, String label, Color textColor) {
  return Row(
    children: [
      Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
      SizedBox(width: 8),
      Text(
        label,
        style: GoogleFonts.alata(fontSize: 16, color: textColor),
      ),
    ],
  );
}



// body: SafeArea(
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      //         child: Container(
      //           height: 50,
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //             color: Colors.pink[200],
      //             borderRadius: BorderRadius.circular(8),
      //           ),
      //           alignment: Alignment.center,
      //           child: Text(
      //             'MATH STATISTICSS ',
      //             style: GoogleFonts.alata(fontSize: 20, color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       //

      //       //
      //       Stack(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.only(left: 10, top: 10),
      //             child: Container(
      //               width: 410,
      //               height: 650,
      //               decoration: BoxDecoration(
      //                 color: Colors.blueGrey,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //             ),
      //           ),
            
                  
                