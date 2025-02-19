import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboardpage extends StatefulWidget {
  @override
  _Dashboardpage createState() => _Dashboardpage();
}

class _Dashboardpage extends State<Dashboardpage> {
  bool tableView = true;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(),
      drawer: Sidebar(),


      body: Container(
        

          child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Row(children: [
              Container(
                height: 80,
                width: 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.indigo,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '312',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text('Open Griviance',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ]),
                ),
              ),
              Container(
                height: 80,
                width: 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.red.shade300,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '312',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text('In-Progress Griviance',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ]),
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Container(
                height: 80,
                width: 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.orange,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '312',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text('Closed Griviance',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ]),
                ),
              ),
              Container(
                height: 80,
                width: 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.green,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '312',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text('Total Griviance',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ]),
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 300,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  )
                ]),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    barGroups: [
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 10.0,
                          width: 12,
                          color: Colors.red.shade300,
                        )
                      ]),
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 9.0,
                          width: 12,
                          color: Colors.yellow,
                        )
                      ]),
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 8.0,
                          width: 12,
                          color: Colors.orange,
                        )
                      ]),
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 7.0,
                          width: 12,
                          color: Colors.brown,
                        )
                      ]),
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 6.0,
                          width: 12,
                          color: Colors.green,
                        )
                      ]),
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 5.0,
                          width: 12,
                          color: Colors.blue,
                        )
                      ]),
                    ],
                    titlesData: FlTitlesData(
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            const style = TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            );
                            switch (value.toInt()) {
                              case 0:
                                return SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: const Text('total\nsales'),
                                );
                              case 1:
                                return SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: const Text('last days'),
                                );

                              case 2:
                                return SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: const Text('this months'),
                                );

                              case 3:
                                return SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: const Text('last month'),
                                );
                              case 4:
                                return SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: const Text('last year'),
                                );
                              default:
                                return const Text('hi');
                            }
                          },
                          reservedSize: 30,
                        ),
                      ),
                    ),
                    gridData: const FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200.withOpacity(0.5),
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                )
              ]),

              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      color: Colors.pink,
                      value: 70,
                      title: '70%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: Colors.blue,
                      value: 60,
                      title: '60%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: Colors.redAccent,
                      value: 50,
                      title: '50%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: Colors.brown,
                      value: 40,
                      title: '40%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: Colors.yellow,
                      value: 30,
                      title: '30%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: Colors.green,
                      value: 20,
                      title: '20%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: Colors.black,
                      value: 10,
                      title: '10%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  sectionsSpace: 1,
                  centerSpaceRadius: 10,
                ),
              ),
              

              // decoration: BoxDecoration(boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.shade200.withOpacity(0.5),
              //     spreadRadius: 2,
              //     offset: const Offset(0, 3),
              //   )
              // ]),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
           child:  Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 200,
              child:   ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tableView = true;
                      isSelected = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    backgroundColor: isSelected ? Colors.orange : Colors.white,
                  ),
                  child: Text(
                    'Assembly',
                    style: TextStyle(
                        fontSize: 10,
                        color: isSelected ? Colors.white : Colors.orange),
                  ),
                ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
              child:   ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tableView = false;
                      isSelected = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    backgroundColor: isSelected ? Colors.white : Colors.orange,
                  ),
                  child: Text(
                    'Category',
                    style: TextStyle(
                        fontSize: 10,
                        color: isSelected ? Colors.orange : Colors.white),
                  ),
                ),
                ),
              ],
            ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200.withOpacity(0.5),
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                )
              ]),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    tableView
                        ? DataTable(
                            headingRowHeight: 30,
                            headingRowColor: const WidgetStatePropertyAll(
                              Colors.red,
                            ),
                            columns: const [
                              DataColumn(
                                  label: Text(
                                'SI NO',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )),
                              DataColumn(
                                  label: Text(' NAME',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('TOTAL',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('OPEN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('IN PROGRESS',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('CLOSE',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text(
                                  '1',
                                )),
                                DataCell(Text('Ravi')),
                                DataCell(Text('22')),
                                DataCell(Text('33')),
                                DataCell(Text('44')),
                                DataCell(Text('12')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(Text('Ravi')),
                                DataCell(Text('22')),
                                DataCell(Text('33')),
                                DataCell(Text('44')),
                                DataCell(Text('11')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(Text('Ravi')),
                                DataCell(Text('22')),
                                DataCell(Text('33')),
                                DataCell(Text('44')),
                                DataCell(Text('55')),
                              ]),
                            ],
                          )
                        : DataTable(
                            headingRowHeight: 30,
                            headingRowColor: const WidgetStatePropertyAll(
                              Colors.red,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            columns: const [
                              DataColumn(
                                  label: Text(
                                'SI NO',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )),
                              DataColumn(
                                  label: Text(' NAME',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('TOTAL',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('OPEN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('IN PROGRESS',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                              DataColumn(
                                  label: Text('CLOSE',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text(
                                  '1',
                                )),
                                DataCell(Text('Lakshmi')),
                                DataCell(Text('99')),
                                DataCell(Text('88')),
                                DataCell(Text('77')),
                                DataCell(Text('66')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(Text('Lakshmi')),
                                DataCell(Text('99')),
                                DataCell(Text('88')),
                                DataCell(Text('77')),
                                DataCell(Text('88')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(Text('Lakshmi')),
                                DataCell(Text('99')),
                                DataCell(Text('88')),
                                DataCell(Text('77')),
                                DataCell(Text('66')),
                              ]),
                            ],
                          ),
                  ],
                ),
              ),
            ),

          ]),
        ),
      )),
      bottomNavigationBar: Customenavbar(),
    );
  }
}
