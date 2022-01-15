import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                icon: const Icon(Icons.notifications, color: Colors.green),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.green),
                onPressed: () {}),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Column(children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.headline3?.fontSize,
                      ),
                    ),
                    Text(
                      "@ifnyas",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primaryVariant,
                        fontSize:
                            Theme.of(context).textTheme.headline3?.fontSize,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Search", prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: const Text(
                        'Recommended Place',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        shrinkWrap: true,
                        childAspectRatio: 16 / 9,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 8,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Image.asset("assets/img/Monas.png"),
                          Image.asset("assets/img/Berlin.png"),
                          Image.asset("assets/img/Roma.png"),
                          Image.asset("assets/img/Tokyo.png"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
