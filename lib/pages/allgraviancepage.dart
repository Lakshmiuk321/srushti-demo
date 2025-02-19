import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';
import 'package:intl/intl.dart';

class Allgraviancepage extends StatefulWidget {
  @override
  _Allgraviancepage createState() => _Allgraviancepage();
}

class _Allgraviancepage extends State<Allgraviancepage> {
  DateTime? toDate;
  DateTime? fromDate;

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
      appBar: CustomAppBar(),
      drawer: Sidebar(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Griviance List',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Parliamentary')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'All',
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
                  alignment: Alignment.centerLeft, child: Text('Assembly')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'All',
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
                  alignment: Alignment.centerLeft, child: Text('Mandal')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'All',
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
              const Align(alignment: Alignment.centerLeft, child: Text('Area')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'All',
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
                  alignment: Alignment.centerLeft, child: Text('Category')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'All',
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
                  child: Text('Griviance Incharge')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'All',
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
                  alignment: Alignment.centerLeft, child: Text('Status')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'All',
                  labelStyle: const TextStyle(
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
                child: Text('From Date'),
              ),
              TextField(
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      fromDate = pickedDate;
                    });
                  }
                },

                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: fromDate != null
                        ? fromDate!.toLocal().toString().split(' ')[0]
                        : 'dd-mm-yyyy',
                    suffixIcon: const Icon(Icons.calendar_month),

                    // suffixIcon: Icon(Icons.date_range),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('To Date'),
              ),
              TextField(
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      toDate = pickedDate;
                    });
                  }
                },
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: toDate != null
                        ? toDate!.toLocal().toString().split(' ')[0]
                        : 'dd-mm-yyyy',
                    hintStyle: toDate != null?
                    TextStyle(color: Colors.black):const TextStyle(color: Colors.grey),
                    suffixIcon: const Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Keyword'),
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search by phone or name',
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                    child: const Text(
                      'Clear Filters',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                    child: const Text(
                      'Export',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
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
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(16),
                  child: DataTable(
                    dataRowHeight: 80,
                    columns: const [
                    DataColumn(
        
                        label: Text(
                      'SI NO',
                      style: TextStyle(color: Colors.orange),
                    )),
                    DataColumn(
                        label: Text('DATE',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('COMPLAINT NUMBER',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('CATEGORY',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('VILLAGE/AREA',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('NAME',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('FONE',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('SOURCE',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('GRIVIANCE\nINCHARGE',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('STATUS',
                            style: TextStyle(color: Colors.orange))),
                    DataColumn(
                        label: Text('EDIT',
                            style: TextStyle(color: Colors.orange))),
                  ], rows: [
                
                    DataRow(
                      cells: [
                      const DataCell(Text('1')),
                      const DataCell(Text('01/01/2025')),
                      const DataCell(Text('54321')),
                      const DataCell(Text('HUMAN\nRESOURCES')),
                      const DataCell(Text('RJY')),
                      const DataCell(Text('LAKSHMI')),
                      const DataCell(Text('99999999999')),
                      const DataCell(Text('WEB')),
                      const DataCell(Icon(
                        Icons.person,
                        color: Colors.red,
                      )),
                      DataCell(
                        Column(children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              backgroundColor: Colors.lightBlueAccent,
                            ),
                            child: const Text(
                              'InProgress',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                          // const Text('29 of days \n Open',style: TextStyle(fontSize: 10),)
                        ]),
                      ),
                      const DataCell(Icon(
                        Icons.edit_calendar,
                        color: Colors.green,
                        size: 20,
                      )),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('2')),
                      const DataCell(Text('01/01/2025')),
                      const DataCell(Text('54321')),
                      const DataCell(Text('HUMAN\nRESOURCES')),
                      const DataCell(Text('RJY')),
                      const DataCell(Text('LAKSHMI')),
                      const DataCell(Text('88888888888')),
                      const DataCell(Text('WEB')),
                      const DataCell(Icon(
                        Icons.person,
                        color: Colors.red,
                      )),
                      DataCell(
                        ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text(
                          'Open',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      ),
                      const DataCell(Icon(
                        Icons.edit_calendar,
                        color: Colors.green,
                        size: 20,
                      )),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('3')),
                      const DataCell(Text('01/01/2025')),
                      const DataCell(Text('54321')),
                      const DataCell(Text('HUMAN\nRESOURCES')),
                      const DataCell(Text('VGP')),
                      const DataCell(Text('LAKSHMI')),
                      const DataCell(Text('99999999999')),
                      const DataCell(Text('WEB')),
                      const DataCell(Icon(
                        Icons.person,
                        color: Colors.red,
                      )),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        child: const Text(
                          'Closed',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      )),
                      const DataCell(Icon(
                        Icons.edit_calendar,
                        color: Colors.green,
                        size: 20,
                      )),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('4')),
                      const DataCell(Text('01/01/2025')),
                      const DataCell(Text('54321')),
                      const DataCell(Text('HUMAN/nRESOURCES')),
                      const DataCell(Text('RJY')),
                      const DataCell(Text('LAKSHMI')),
                      const DataCell(Text('8888888888')),
                      const DataCell(Text('WEB')),
                      const DataCell(Icon(
                        Icons.person,
                        color: Colors.red,
                      )),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text(
                          'Open',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      )),
                      const DataCell(Icon(
                        Icons.edit_calendar,
                        color: Colors.green,
                        size: 20,
                      )),
                    ]),
                  ]),
                ),
              )
            ]),
          ),
        ),
      ),
            bottomNavigationBar: Customenavbar(),

    );
  }
}
