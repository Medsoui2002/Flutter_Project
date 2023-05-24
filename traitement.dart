import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class Traitement extends StatefulWidget {
  const Traitement({Key? key}) : super(key: key);

  @override
  State<Traitement> createState() => _Traitement();
}

class _Traitement extends State<Traitement> {
  Future<String?> openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      return file.path;
    } else {
      // User canceled the picker
      return null;
    }
  }
  @override
  DateTime date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'pre',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                    )
                ),
              ),

              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Selectionner une date'
                ),
                readOnly: true,
                onTap: (){
                  showDatePicker(context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now(),

                  );
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  String? filePath = await openFilePicker();
                  if (filePath != null) {
                    // Do something with the selected file path
                    print(filePath);
                  }
                },
                child: Text('Open File Picker'),
              ),


            ],
          ),
        ),
      ),
    );

  }
}