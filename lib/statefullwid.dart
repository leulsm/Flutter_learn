import 'package:flutter/material.dart';

class StateFullWid extends StatelessWidget {
  const StateFullWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Satefull"),
      ),
      body: const Startfullwidd(),
    );
  }
}

class Startfullwidd extends StatefulWidget {
  const Startfullwidd({super.key});

  @override
  State<Startfullwidd> createState() => _StartfullwiddState();
}

class _StartfullwiddState extends State<Startfullwidd> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.zoom_out_sharp),
          title: const Text("First"),
          trailing: IconButton(
            icon: ischecked
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
            onPressed: () {
              setState(() {
                ischecked = !ischecked;
              });
            },
          ),
        )
      ],
    );
  }
}
