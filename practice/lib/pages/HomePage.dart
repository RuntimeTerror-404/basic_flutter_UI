// import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:practice/change_card_name.dart';
import 'package:practice/drawer.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var data;
  var url = "https://jsonplaceholder.typicode.com/photos";

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        shadowColor: Colors.blue,
        elevation: 10,
        title: Center(child: Text("Hi Flutter")),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: data != null
            ? ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("id: ${data[index]["id"]}"),
                        leading: Image.network(data[index]["url"])),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          Navigator.pushNamed(context, "/login");
          setState(() {});
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
