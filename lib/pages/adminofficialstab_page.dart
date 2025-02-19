import 'package:flutter/material.dart';
// import 'package:miniproject/pages/deptcontactlist.dart';
// import 'package:miniproject/pages/deptcontacts.dart';
import 'package:miniproject/pages/homepage.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';

class AdminofficialstabPage extends StatefulWidget {
  @override
  _AdminofficialstabPage createState() => _AdminofficialstabPage();
}

class _AdminofficialstabPage extends State<AdminofficialstabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
  child:   Scaffold(
      drawer: Sidebar(),
      appBar: const CustomAppBar(
          bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
            Tab(
              text: ' Official Contacts' ),
            Tab(
              text: 'Official List' )
          ])),
      body: TabBarView(children: [
        Adminofficial(),
         Adminofficiallist(),
         ]),
  ),
    );
  }
}



// page2
class Adminofficial extends StatefulWidget {
  @override
  _Adminofficial createState() => _Adminofficial();
}

class _Adminofficial extends State<Adminofficial> {
  final _formKey = GlobalKey<FormState>();
  String? name;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'ADD ADMINISTRATIVE OFFICIALS',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text('Parliament'),
                      Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Select Location',
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
                      child: Row(children: [
                        Text(
                          'District',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Enter district',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                SizedBox(height: 20,),

                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Enter Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'name is reuired';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'Designation',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Enter Designation',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                       onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'name is reuired';
                      }
                      return null;
                    },

                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Phone Number',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>Homepage() ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.orange,
                    ),
                    child: const Text('Save',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
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



// page3
class Adminofficiallist extends StatefulWidget {
  @override
  _Adminofficiallist createState() => _Adminofficiallist();
}

class _Adminofficiallist extends State<Adminofficiallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:Container(
        child: Padding(padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Column(
                children: [
                  const Align(alignment: Alignment.centerLeft,
                  child:  Text('ADMINISTRATIVE OFFICIAL LIST',style: TextStyle(fontWeight: FontWeight.bold),),),
                  SizedBox(height: 10,),
                  const TextField(
             decoration: InputDecoration(
              suffixIcon: Icon(Icons.wrong_location_rounded),
                  border: OutlineInputBorder(),
                  hintText: 'Filter by Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                ),
               ),
               SizedBox(height: 20,),
               Container(
                                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200.withOpacity(0.5),
                        spreadRadius: 2,
                        offset: const Offset(0, 3),
                      )
                    ]),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('SI NO',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('NAME',style: TextStyle(color: Colors.orange))),
                      DataColumn(label: Text('DESIGNATION',style: TextStyle(color: Colors.orange))),
                       DataColumn(label: Text('MOBILE NUMBER',style: TextStyle(color: Colors.orange))),
                      DataColumn(label: Text('EMAIL',style: TextStyle(color: Colors.orange))),
                       DataColumn(label: Text('PARLIAMENT',style: TextStyle(color: Colors.orange))),
                       DataColumn(label: Text('VIEW',style: TextStyle(color: Colors.orange))),
                       DataColumn(label: Text('DELETE',style: TextStyle(color: Colors.orange))),


                    ],
                     rows: const [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('LAKSHMI')),
                          DataCell(Text('ENGINEER')),
                        DataCell(Text('9999999999')),
                        DataCell(Text('123@G.COM')),
                        DataCell(Text('RJY')),
                          DataCell(Icon(
                          Icons.remove_red_eye_outlined,color: Colors.blue,size: 18,
                        )),
                         DataCell(Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                      ]),

                                            DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('LAKSHMI')),
                          DataCell(Text('ENGINEER')),
                        DataCell(Text('88888888888')),
                        DataCell(Text('123@G.COM')),
                        DataCell(Text('SNM')),
                          DataCell(Icon(
                          Icons.remove_red_eye_outlined,color: Colors.blue,size: 18,
                        )),
                         DataCell(Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                      ]),

                                            DataRow(cells: [
                        DataCell(Text('3')),
                        DataCell(Text('LAKSHMI')),
                          DataCell(Text('ENGINEER')),
                        DataCell(Text('77777777777')),
                        DataCell(Text('123@G.COM')),
                        DataCell(Text('VGP')),
                          DataCell(Icon(
                          Icons.remove_red_eye_outlined,color: Colors.blue,size: 18,
                        )),
                         DataCell(Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('4')),
                        DataCell(Text('LAKSHMI')),
                          DataCell(Text('ENGINEER')),
                        DataCell(Text('66666666666')),
                        DataCell(Text('123@G.COM')),
                        DataCell(Text('KKD')),
                          DataCell(Icon(
                          Icons.remove_red_eye_outlined,color: Colors.blue,size: 18,
                        )),
                         DataCell(Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                      ]),
                                            DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('LAKSHMI')),
                          DataCell(Text('ENGINEER')),
                        DataCell(Text('555555555555')),
                        DataCell(Text('123@G.COM')),
                        DataCell(Text('HYD')),
                          DataCell(Icon(
                          Icons.remove_red_eye_outlined,color: Colors.blue,size: 18,
                        )),
                         DataCell(Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                      ]),

                     DataRow(cells: [
                        DataCell(Text('6')),
                        DataCell(Text('LAKSHMI')),
                          DataCell(Text('ENGINEER')),
                        DataCell(Text('444444444444')),
                        DataCell(Text('123@G.COM')),
                        DataCell(Text('PPM')),
                          DataCell(Icon(
                          Icons.remove_red_eye_outlined,color: Colors.blue,size: 18,
                        )),
                         DataCell(Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                      ]),



                      
                      ]
                       ),
                    ),
               ),
                ],
          ) ,
        ),
        ),
      ) ,
      bottomNavigationBar: Customenavbar(),
    );
  }
}
