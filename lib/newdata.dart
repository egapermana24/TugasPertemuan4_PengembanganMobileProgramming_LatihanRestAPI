import 'package:belajar_restapi/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewData extends StatefulWidget {
  const NewData({Key? key}) : super(key: key);
  @override
  _NewDataState createState() => _NewDataState();
}

class _NewDataState extends State<NewData> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  void addData() {
    var url = Uri.parse(
        'http://192.168.43.236/restapi/create.php'); //Inserting Api Calling
    http.post(url, body: {
      "title": title.text,
      "content": content.text
    }); // parameter passed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        flexibleSpace: Center(
          child: Text(
            'Add New Blog',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: title,
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Enter Title',
                hintText: 'Enter Title',
                prefixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.title),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              maxLines: 5,
              controller: content,
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Enter Content',
                hintText: 'Enter Content',
                prefixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.text_snippet_outlined),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius:
                  BorderRadius.circular(30), // Membuat tombol berbentuk bulat
            ),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20), // Atur ukuran tombol
              child: const Text(
                "Add Data",
                style: TextStyle(color: Colors.white), // Warna teks putih
              ),
              onPressed: () {
                addData();
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Home()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
