// custom radio button
import 'package:flutter/material.dart';
import '../homepage.dart';
import '../Form.dart';

enum ProductTypeEnum { Downloadable, Deliverable, Thired }

class MyRadioButton extends StatelessWidget {
  MyRadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.radiogroup,
    required this.onchange,
  }) : super(key: key);

  String title;
  ProductTypeEnum value;
  ProductTypeEnum? radiogroup;
  Function(ProductTypeEnum?)? onchange;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
          tileColor: Colors.deepPurple.shade50,
          title: Text(title),
          contentPadding: const EdgeInsets.all(0.0),
          value: value,
          groupValue: radiogroup,
          dense: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onChanged: onchange),
    );
  }
}
