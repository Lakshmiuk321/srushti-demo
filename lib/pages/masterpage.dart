import 'package:flutter/material.dart';
import 'package:miniproject/utils/Bottomnavbar.dart';
import 'package:miniproject/utils/custom_appbar.dart';
import 'package:miniproject/utils/sidebar.dart';
import 'package:file_picker/file_picker.dart';


class Masterpage extends StatefulWidget {
  @override
  _Masterpage createState() => _Masterpage();
}

class _Masterpage extends State<Masterpage> {
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
      appBar: const CustomAppBar(),
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
      child: Padding(padding: const EdgeInsets.all(16),
child: Column(
  children: [
    const SizedBox(height: 10,),
    const Align(alignment:Alignment.centerLeft,
 child:Text('UPDATE MASTER DATA',style: TextStyle(fontWeight: FontWeight.bold),),),
     const SizedBox(height: 15,),

                 if (_file != null) ...[
              Text("Selected File: ${_file!.files.single.name}"),
              Text("File Size: ${_file!.files.single.size / 1024} KB"),
              Text("File Extension: ${_file!.files.single.extension}"),
            ] else
              // Text("No file selected",),

                       TextField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Select Fille',
                      suffixText:' Browse',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onTap: _pickFile,
                  ),
const SizedBox(height: 5,),
                  ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('IMPORT',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,)),
                  ),
                  const SizedBox(width:  10,),



 const Align(alignment: Alignment.centerLeft,child: Text('Grievance Category')),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Sample',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('ADD',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width:  10,),
                  
                                    ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('VIEW',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  ]
                 ),
                                   const SizedBox(height: 20,),

                  const Align(alignment: Alignment.centerLeft,child: Text('Department Category')),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Sample',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('ADD',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width:  10,),
                                    ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('VIEW',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                   ]
                  ),

                   const Align(alignment: Alignment.centerLeft,child: Text('Policy Category')),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Sample',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('ADD',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),

                  const SizedBox(width:  10,),
                   ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('VIEW',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  ]
                 ),
                                   const SizedBox(height: 20,),

                  const Align(alignment: Alignment.centerLeft,child: Text('Vedio Category')),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Sample',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('ADD',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width:  10,),
                                    ElevatedButton(
                    onPressed: () {},
                     style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text('VIEW',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),

                  
                  ]
                ),

      

                    ]
                  ),

),  
      ),
     ),
     bottomNavigationBar: Customenavbar(),
    );
  }
}
