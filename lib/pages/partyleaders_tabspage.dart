import 'package:flutter/material.dart';
import 'package:miniproject/pages/homepage.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/appcolors.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';

class Candidatesdetails extends StatefulWidget {
  @override
  _Candidatesdetails createState() => _Candidatesdetails();
}

class _Candidatesdetails extends State<Candidatesdetails> {
  String? selectedRole;
  final _formKey = GlobalKey<FormState>();
  String? name;
  List<DropdownMenuItem<String>> roleTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
    const DropdownMenuItem<String>(
      value: '3',
      child: Text('State Minister'),
    ),
    const DropdownMenuItem<String>(
      value: '4',
      child: Text('Central Minister'),
    ),
  ];
  List<DropdownMenuItem<String>> userTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: Sidebar(),
      body: Container(
        // height: 500,
        // width: 300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'MLA/MP',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'User Role',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Select Role',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    items: roleTypes,
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'User Name',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Select User',
                      // hintStyle: const TextStyle(
                      //   fontSize: 15,
                      // ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    items: userTypes,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'parliament',
                    ),
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'parliament',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    items: userTypes,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  if (selectedRole == '1' || selectedRole == '3') ...[
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'assembly',
                      ),
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        hintText: ' Select Assembly',
                        hintStyle: const TextStyle(
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      items: userTypes,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ],
                  if (selectedRole == '3' || selectedRole == '4') ...[
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ministry name',
                      ),
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        hintText: 'Ministry Name',
                        hintStyle: const TextStyle(
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      items: userTypes,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ],
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Appcolors.Primarycolor,
                    ),
                    child: const Text('Save',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Candidates List',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
                      child: DataTable(columns: const [
                        DataColumn(
                            label: Text(
                          'SI NO',
                          style: TextStyle(color: Appcolors.Primarycolor),
                        )),
                        DataColumn(
                            label: Text('NAME',
                                style:
                                    TextStyle(color: Appcolors.Primarycolor))),
                        DataColumn(
                            label: Text('DESIGNATION',
                                style:
                                    TextStyle(color: Appcolors.Primarycolor))),
                        DataColumn(
                            label: Text('MOBILE NUMBER',
                                style:
                                    TextStyle(color: Appcolors.Primarycolor))),
                        DataColumn(
                            label: Text('EMAIL',
                                style:
                                    TextStyle(color: Appcolors.Primarycolor))),
                        DataColumn(
                            label: Text('PARLIAMENT',
                                style:
                                    TextStyle(color: Appcolors.Primarycolor))),
                        DataColumn(
                            label: Text('ASSEMBLY',
                                style:
                                    TextStyle(color: Appcolors.Primarycolor))),
                      ], rows: const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('LAKSHMI')),
                          DataCell(Text('MLA')),
                          DataCell(Text('9999999999')),
                          DataCell(Text('123@G.COM')),
                          DataCell(Text('RJY')),
                          DataCell(Text('RJY')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('2')),
                          DataCell(Text('LAKSHMI')),
                          DataCell(Text('MP')),
                          DataCell(Text('88888888888')),
                          DataCell(Text('123@G.COM')),
                          DataCell(Text('SNM')),
                          DataCell(Text('SNM')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('3')),
                          DataCell(Text('LAKSHMI')),
                          DataCell(Text('MLA')),
                          DataCell(Text('77777777777')),
                          DataCell(Text('123@G.COM')),
                          DataCell(Text('VGP')),
                          DataCell(Text('VGP')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('4')),
                          DataCell(Text('LAKSHMI')),
                          DataCell(Text('MP')),
                          DataCell(Text('66666666666')),
                          DataCell(Text('123@G.COM')),
                          DataCell(Text('KKD')),
                          DataCell(Text('VGP')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('5')),
                          DataCell(Text('LAKSHMI')),
                          DataCell(Text('MLA')),
                          DataCell(Text('555555555555')),
                          DataCell(Text('123@G.COM')),
                          DataCell(Text('HYD')),
                          DataCell(Text('VGP')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('6')),
                          DataCell(Text('LAKSHMI')),
                          DataCell(Text('MP')),
                          DataCell(Text('444444444444')),
                          DataCell(Text('123@G.COM')),
                          DataCell(Text('PPM')),
                          DataCell(Text('VGP')),
                        ]),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Customenavbar(),
    );
  }
}
