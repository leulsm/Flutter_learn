import 'package:flutter/material.dart';
import 'package:learn_flutter/detail.dart';
import 'package:learn_flutter/my_radio_button.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  _formState() {
    _selectedval = _productSizeList[0];
  }
  var _productname;
  final _productcontroller = TextEditingController();
  final _productcontroller2 = TextEditingController();
  bool? _checkboxlisttile = false;

  ProductTypeEnum? _productTypeEnum;

  final _productSizeList = ["small", "medium", "large", "xlarge"];
  String? _selectedval = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _productcontroller.addListener(_updateText);
  }

  @override
  void dispose() {
    _productcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _productname = _productcontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Product name',
                  prefixIcon: Icon(Icons.verified_user_outlined),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _productcontroller, // it is ID
                // onChanged: (val) {
                //   _updateText(val);
                // },
                decoration: const InputDecoration(
                  labelText: 'Product name',
                  icon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
              Text("Product Name is ${_productname}"),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _productcontroller2, // it is ID
                decoration: const InputDecoration(
                  labelText: 'Product name',
                  prefixIcon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CheckboxListTile(
                tristate: true,
                tileColor: Colors.deepPurple.shade50,
                title: const Text(
                  "Top product",
                  style: TextStyle(color: Colors.white),
                ),
                checkColor: Colors.white,
                activeColor: Colors.deepPurple.shade300,

                value: _checkboxlisttile,
                onChanged: (val) {
                  setState(() {
                    _checkboxlisttile = val;
                  });
                },
                // to make the checkbox a leading  icon
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
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
                  MyRadioButton(
                      title: ProductTypeEnum.Deliverable.name,
                      value: ProductTypeEnum.Deliverable,
                      radiogroup: _productTypeEnum,
                      onchange: (val) {
                        setState(() {
                          _productTypeEnum = val;
                        });
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  MyRadioButton(
                      title: ProductTypeEnum.Downloadable.name,
                      value: ProductTypeEnum.Downloadable,
                      radiogroup: _productTypeEnum,
                      onchange: (val) {
                        setState(() {
                          _productTypeEnum = val;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              DropdownButton(
                value: _selectedval,
                items: _productSizeList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedval = val;
                  });
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              DropdownButtonFormField(
                value: _selectedval,
                items: _productSizeList.map(
                  (e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedval = val;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.deepPurple,
                ),
                dropdownColor: Colors.deepPurple.shade50,
                decoration: const InputDecoration(
                  labelText: "Product size",
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              myBtn(context),
            ],
          ),
        ));
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailInfo(
                productname: _productcontroller.text,
              );
            },
          ),
        );
      },
      child: const Text("Submite",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
