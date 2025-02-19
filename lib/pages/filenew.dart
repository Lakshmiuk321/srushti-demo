import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
class FileUploadDemo extends StatefulWidget {
  @override
  _FileUploadDemoState createState() => _FileUploadDemoState();
}

class _FileUploadDemoState extends State<FileUploadDemo> {
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
      appBar: AppBar(title: Text('File Upload Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_file != null) ...[
              Text("Selected File: ${_file!.files.single.name}"),
              Text("File Size: ${_file!.files.single.size / 1024} KB"),
              Text("File Extension: ${_file!.files.single.extension}"),
            ] else
              Text("No file selected"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickFile,
              child: Text("Pick File"),
            ),
          ],
        ),
      ),
    );
  }
}
