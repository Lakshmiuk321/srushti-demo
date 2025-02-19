import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';
import 'package:file_picker/file_picker.dart';

class Griviancepage extends StatefulWidget {
  @override
  _Griviancepage createState() => _Griviancepage();
}

class _Griviancepage extends State<Griviancepage> {
  List<DropdownMenuItem<String>> categoryTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];
  List<DropdownMenuItem<String>> complaintTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];
  List<DropdownMenuItem<String>> parliamentTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];
  List<DropdownMenuItem<String>> assemblyTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];

  List<DropdownMenuItem<String>> mandalTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];
  List<DropdownMenuItem<String>> areaTypes = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text('MLA'),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text('MP'),
    ),
  ];

    FilePickerResult? _file; // Holds the selected file

  Future<void> _pickFile() async {
    _file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'png', 'doc'], // Restrict file types
    );

    if (_file != null) {
      setState(() {});
    }
  }


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
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Complaint Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Complaint Category')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select',
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                items: categoryTypes,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Complaint Type')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select',
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                items: complaintTypes,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft, child: Text('Parliament')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select',
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
                  hintText: 'Select',
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
                  alignment: Alignment.centerLeft, child: Text('Mandal')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select',
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
                height: 20,
              ),
              const Align(alignment: Alignment.centerLeft, child: Text('Area')),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select',
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                items: areaTypes,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Full Name'),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Mobile Number'),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Email ID'),
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
                            const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Complaint Detailse',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),

            //                     Container(
                                  
            //  child:
            //  SingleChildScrollView(
            //   scrollDirection: Axis.horizontal, 

            // child:  Row(
            //     children: [


              //   const SizedBox(
              //         width: 200,
              //  height: 130,
                   const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Enter Message',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                // ),
                const SizedBox(
                  height: 20,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.orange,
                    ),
                    child: const Row(children: [
                      Icon(
                        Icons.mic_outlined,
                        color: Colors.white,
                      ),
                      Text('Record',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                              if (_file != null) ...[
              Text("Selected File: ${_file!.files.single.name}"),
              Text("File Size: ${_file!.files.single.size / 1024} KB"),
              Text("File Extension: ${_file!.files.single.extension}"),
            ] else
              // Text("No file selected"),

                  ElevatedButton(
                    onPressed: _pickFile,
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.orange,
                    ),
                    
                    child: const Row(children: [
                      Icon(
                        Icons.file_upload_outlined,
                        color: Colors.white,
                      ),
                      
                      Text('Upload',

                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ]),
            //   ]),
            //  ),
            //       ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  backgroundColor: Colors.orange,
                ),
                child: const Text('Create Complaint',
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
                bottomNavigationBar: Customenavbar(),

    );
  }
}








