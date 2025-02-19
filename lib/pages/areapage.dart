import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';

class Areapage extends StatefulWidget {
  @override
  _Areapage createState() => _Areapage();
}

class _Areapage extends State<Areapage> {
  List<DropdownMenuItem<String>> parliamentTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('RJY'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('RJN'),
    ),
  ];
  List<DropdownMenuItem<String>> assemblyTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text(
        'select assembly',
      ),
    ),
    //   const DropdownMenuItem<String>(
    //     value: '2',
    //     child: Text('Agriculture'),
    // ),
  ];
  List<DropdownMenuItem<String>> mandalTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('select mandal'),
    ),
    // const DropdownMenuItem<String>(
    //   value: '2',
    //   child: Text('Agriculture'),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: Sidebar(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Parliamet'),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Select Parliament',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  items: parliamentTypes,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Assembly'),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Select Assembly',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  items: assemblyTypes,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Mandal'),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Select Mandal',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  items: mandalTypes,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 25,
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
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('List')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text(
                            'Parliaments',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('NAME')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('NARSAPURAM')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('ELURU')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('RAJAHMUNDRY')),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Customenavbar(),
    );
  }
}
