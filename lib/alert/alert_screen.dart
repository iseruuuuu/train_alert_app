// import 'package:exchange_contact_app/component/barcode_item/facebook_item.dart';
// import 'package:exchange_contact_app/component/barcode_item/instagram_item.dart';
// import 'package:exchange_contact_app/component/barcode_item/line_item.dart';
// import 'package:exchange_contact_app/component/barcode_item/twiter_item.dart';
// import 'package:exchange_contact_app/component/local/shared_preferences.dart';
// import 'package:flutter_state_notifier/flutter_state_notifier.dart';
// import 'package:provider/provider.dart';
// import 'home_screen_state.dart';
import 'package:flutter/material.dart';


class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
                size: 40,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.contact_support_rounded,
                  color: Colors.blueAccent,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(height: 50),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

