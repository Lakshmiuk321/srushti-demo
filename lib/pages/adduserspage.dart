import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';

class Adduserspage extends StatefulWidget {
  @override
  _Adduserspage createState() => _Adduserspage();
}

class _Adduserspage extends State<Adduserspage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Sidebar(),
      body: Container(
       decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200.withOpacity(0.5),
                        spreadRadius: 2,
                        offset: const Offset(0, 3),
                      )
                    ]),

child: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Padding(padding: EdgeInsets.all(16),
  child: Column(
    children: [
                        const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'PARTY USER',
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
                          'Full Name',
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
                      hintText: ' Enter Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
const SizedBox(height: 10,),

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
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Enter User Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onChanged: (value) {
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'name is reuired';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                                                      const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '*',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ])),
                  // const TextField(
                  //   // keyboardType:TextInputType.multiline,
                  //   // maxLines: 10,
                  //   keyboardType: TextInputType.visiblePassword,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     hintText: ' Enter Password',
                  //     hintStyle: TextStyle(color: Colors.grey),
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //   ),
                  // ),
const SizedBox(height: 10,),
  ElevatedButton(
                    onPressed: () {
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
const SizedBox(height: 20,),
    const Align(alignment: Alignment.centerLeft,
          child: Text('User List',style: TextStyle(fontWeight: FontWeight.bold),),),
                            const TextField(
                    keyboardType:TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Filter by Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),

    Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
                   DataTable(
                    columns: const [
                      DataColumn(label: Text('NAME')),
                       DataColumn(label: Text('USER NAME')),
                      ],
                    rows: const [
                      DataRow(cells: [
                         DataCell(Text('Ravi',)),
                        DataCell(Text('Ravi')),
                        ]),

                      DataRow(cells: [
                          DataCell(Text('Raju')),
                         DataCell(Text('Raju')),
                      ]),

                      DataRow(cells: [
                      DataCell(Text('Hari')),
                     DataCell(Text('Hari')),
                      ]),

                    ],
                  ),


          ],
        ),
      ),
    )


    ],
  ),
  ),
),
      ),
      bottomNavigationBar: Customenavbar(),
 );
  }
}
