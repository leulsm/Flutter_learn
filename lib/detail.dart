import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  DetailInfo({Key? key, required this.productname}) : super(key: key);

  String productname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_outlined),
              title: Text(productname),
            ),
          ],
        ),
      ),
    );
  }
}
