import 'package:flutter/material.dart';
import 'package:learn_flutter/Form.dart';
import 'package:learn_flutter/learn_flutter_page.dart';
import 'package:learn_flutter/my_radio_button.dart';
import 'package:learn_flutter/statefullwid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> products = ["bed", "sofa", "chai"];

  List<String> productsDetail = [
    "king size bed",
    "king size sofa",
    "wooden chair"
  ];

  bool? _checkbox, _checkboxlisttile = false;

  List<int> price = [300, 340, 200];

  ProductTypeEnum? _productTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LearnFlutterPage();
                  },
                ),
              );
            },
            child: const Text("Learn Flutter"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const StateFullWid();
                  },
                ),
              );
            },
            child: const Text("Statefull"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const form();
                  },
                ),
              );
            },
            child: const Text("Form"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(Icons.access_alarm),
                  Text("Alarm"),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.wine_bar),
                  Text("Wine"),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.announcement),
                  Text("Announcement"),
                ],
              ),
            ],
          ),
          Checkbox(
            tristate: true,
            checkColor: Colors.white,
            activeColor: Colors.deepOrange,
            value: _checkbox,
            onChanged: (val) {
              setState(() {
                _checkbox = val;
              });
            },
          ),
          CheckboxListTile(
            tristate: true,
            title: const Text("Top product"),
            checkColor: Colors.white,
            activeColor: Colors.deepOrange,
            value: _checkboxlisttile,
            onChanged: (val) {
              setState(() {
                _checkboxlisttile = val;
              });
            },
            // to make the checkbox a leading  icon
            controlAffinity: ListTileControlAffinity.leading,
          ),
          // Radio(
          //   value: ProductTypeEnum.Deliverable,
          //   groupValue: _productTypeEnum,
          //   onChanged: (val) {
          //     setState(() {
          //       _productTypeEnum = val;
          //     });
          //   },
          // ),
          Row(
            children: const [
              // Expanded(
              //   child: RadioListTile(
              //       contentPadding: EdgeInsets.all(0.0),
              //       value: ProductTypeEnum.Downloadable,
              //       groupValue: _productTypeEnum,
              //       dense: true,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //       tileColor: Colors.deepPurple.shade50,
              //       title: Text(ProductTypeEnum.Downloadable.name),
              //       onChanged: (val) {
              //         setState(() {
              //           _productTypeEnum = val;
              //         });
              //       }),
              // ),
              // const SizedBox(
              //   width: 10.0,
              // ),
              // Expanded(
              // child: RadioListTile(
              //     tileColor: Colors.deepPurple.shade50,
              //     contentPadding: const EdgeInsets.all(0.0),
              //     value: ProductTypeEnum.Thired,
              //     dense: true,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10.0),
              //     ),
              //     title: Text(ProductTypeEnum.Thired.name),
              //     groupValue: _productTypeEnum,
              //     onChanged: (val) {
              //       setState(() {
              //         _productTypeEnum = val;
              //       });
              //       }),
              // ),
              // MyRadioButton(
              //     title: ProductTypeEnum.Deliverable.name,
              //     value: ProductTypeEnum.Deliverable,
              //     radiogroup: _productTypeEnum,
              //     onchange: (val) {
              //       setState(() {
              //         _productTypeEnum = val;
              //       });
              //     }),
              // const SizedBox(
              //   width: 10.0,
              // ),
              // MyRadioButton(
              //     title: ProductTypeEnum.Downloadable.name,
              //     value: ProductTypeEnum.Downloadable,
              //     radiogroup: _productTypeEnum,
              //     onchange: (val) {
              //       setState(() {
              //         _productTypeEnum = val;
              //       });
              //     }),
            ],
          ),
        ],
      ),
    );
  }
}
