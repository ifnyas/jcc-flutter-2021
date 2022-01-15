import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final List? value;

  const DetailScreen({Key? key, required this.value}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List? value;
  //_DetailScreenState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen News'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value?[0] ?? "",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyText1?.fontSize,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              value?[1] ?? "",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyText2?.fontSize,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
