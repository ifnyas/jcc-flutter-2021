import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/user_model.dart';

class PostDataDialog extends StatefulWidget {
  const PostDataDialog({Key? key}) : super(key: key);

  @override
  _PostDataDialogState createState() => _PostDataDialogState();
}

class _PostDataDialogState extends State<PostDataDialog> {
  UserModel? _user;

  final _keyLoader = GlobalKey();
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  _submitted(BuildContext context) async {
    final title = titleController.text;
    final value = valueController.text;
    final user = await createUser(title, value);

    setState(() {
      _user = user;
    });
    Navigator.pop(context);
  }

  Future<UserModel?> createUser(String title, String value) async {
    try {
      Dialogs.showLoadingDialog(context, _keyLoader);
      var apiUrl =
          Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/news");
      final response =
          await http.post(apiUrl, body: {"title": title, "value": value});
      if (response.statusCode == 201) {
        final responseString = response.body;
        return userModelFromJson(responseString);
      }
      Navigator.of(context).pop(context);
    } catch (e) {
      // print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Data'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Title"),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Value"),
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            _user == null
                ? Container()
                : Text(
                    "the user ${_user!.title} is created, and id ${_user!.id}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _submitted(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Dialogs {
  static Future showLoadingDialog(BuildContext context, GlobalKey key) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: SimpleDialog(
              backgroundColor: Colors.black54,
              children: [
                Center(
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(height: 8),
                      Text(
                        "Please wait...",
                        style: TextStyle(color: Colors.blueAccent),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
