import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugasflutter/tugas14/post_data_dialog.dart';
import '/tugas14/detail_screen.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final url = "https://achmadhilmy-sanbercode.my.id/api/v1/news";
  List? data;

  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future _getRefreshData() async {
    getJsonData(context);
  }

  Future getJsonData(BuildContext context) async {
    var response = await http.get(Uri.parse(url), headers: {
      "Accept": "application/json",
    });
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data Api"),
      ),
      body: RefreshIndicator(
        onRefresh: _getRefreshData,
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      var title = data?[index]['title'] ?? "";
                      var value = data?[index]['value'] ?? "";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(value: [title, value])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                data?[index]['title'] ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const Icon(Icons.chevron_right)
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Divider(
                            height: 20,
                            thickness: 1,
                            endIndent: 25,
                            indent: 15,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ));
        }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PostDataDialog()));
          },
          child: const Icon(Icons.add)),
    );
  }
}
