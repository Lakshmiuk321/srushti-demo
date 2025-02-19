import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
// import 'package:miniproject/pages/Grivinchargepage.dart';
// import 'package:miniproject/pages/grivilist.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';
class grivitabspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Sidebar(),
                   appBar: const CustomAppBar(
                   bottom:TabBar(
                  indicatorColor: Colors.white, 
                   labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
              tabs: [
     Tab(text: 'Griviance Incharge',),
    Tab(text: 'Griviance List',)
      ]
     )
     ),
             body: TabBarView(children: [
         Grivinchargepage(),
         Grivilist()
          ]
         ),
          ),
 );
  }
}

// page2

class Grivinchargepage extends StatefulWidget {
  @override
  _Grivinchargepage createState() => _Grivinchargepage();
}

class _Grivinchargepage extends State<Grivinchargepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Align(
                  alignment:Alignment.centerLeft ,
                  child:   Text(
                  'Grievance Incharge',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),),
                const SizedBox(height: 25,),

                const Align(
                  alignment: Alignment.centerLeft,
                  child:Row(children: [
                   Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text('*',style: TextStyle(fontSize:15, color: Colors.red),)
                  ])
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
              ),
              const SizedBox(height: 30,),

                              const Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Row(children: [ Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                   Text('*',style: TextStyle(fontSize:15, color: Colors.red),)
              ])
                ),

                              const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: ' Enter Phone Number',hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                              const SizedBox(height: 30,),
                                              const Align(
                  alignment: Alignment.centerLeft,
                  child:Row(children: [
                   Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text('*',style: TextStyle(fontSize:15, color: Colors.red),)
              ])
                ),  
                   const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

              const SizedBox(height: 30,),
                                ElevatedButton(
                    child: const Text('Save',
                        style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.orange,
                    ),
                  ),


              ],
            ),
          ),
        ),
        bottomNavigationBar: Customenavbar(),
        );
  }

}



// page3
class Grivilist extends StatefulWidget {
  @override
  _Grivilist createState() => _Grivilist();
}

class _Grivilist extends State<Grivilist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Grievance Incharge List',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Key Word Search',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search by Name or phone',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                child:  const Text(
                  'Clear Filters',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 20),
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
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('NAME')),
                      DataColumn(label: Text('PHONE')),
                      DataColumn(label: Text('ACTIONS')),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('Dilli')),
                        DataCell(Text('9999999999')),
                        DataCell(Icon(
                          Icons.edit_square,
                          color: Colors.green,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Mani')),
                        DataCell(Text('8888888888')),
                        DataCell(Icon(
                          Icons.edit_square,
                          color: Colors.green,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Hari')),
                        DataCell(Text('7777777777')),
                        DataCell(Icon(
                          Icons.edit_square,
                          color: Colors.green,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Ramu')),
                        DataCell(Text('66666666666')),
                        DataCell(Icon(
                          Icons.edit_square,
                          color: Colors.green,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Ravi')),
                        DataCell(Text('5555555555')),
                        DataCell(Icon(
                          Icons.edit_square,
                          color: Colors.green,
                        )),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Customenavbar(),
    );
  }
}
