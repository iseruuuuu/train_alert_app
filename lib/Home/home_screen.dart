// import 'package:exchange_contact_app/component/barcode_item/facebook_item.dart';
// import 'package:exchange_contact_app/component/barcode_item/instagram_item.dart';
// import 'package:exchange_contact_app/component/barcode_item/line_item.dart';
// import 'package:exchange_contact_app/component/barcode_item/twiter_item.dart';
// import 'package:exchange_contact_app/component/local/shared_preferences.dart';
// import 'package:flutter_state_notifier/flutter_state_notifier.dart';
// import 'package:provider/provider.dart';
// import 'home_screen_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: RaisedButton(
                onPressed: () {
                  _showModalPicker(context);
                },
                child: const Text('Show Picker'),
              ),
            ),

            Text(_selectedItem)
          ],
        ),
      ),
    );
  }

  void _showModalPicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              children: _items.map(_pickerItem).toList(),
              onSelectedItemChanged: _onSelectedItemChanged,
            ),
          ),
        );
      },
    );
  }

  String _selectedItem = 'none';

  final List<String> _items = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
  ];

  Widget _pickerItem(String str) {
    return Text(
      str,
      style: const TextStyle(fontSize: 32),
    );
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      _selectedItem = _items[index];
    });
  }
}

