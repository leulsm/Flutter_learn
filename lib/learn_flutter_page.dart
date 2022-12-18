import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isswitch = false;
  bool? ischeckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/Img_5.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: isswitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('ElevetedButton');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton');
              },
              child: const Text('Outlined Button'),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text(
                    'Row widget',
                  ),
                  Icon(
                    FontAwesomeIcons.asymmetrik,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isswitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isswitch = newBool;
                  });
                }),
            Checkbox(
              value: ischeckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  ischeckbox = newBool;
                });
              },
            ),
            // Image.network(
            //     'https://th.bing.com/th/id/R.1e13c10fd50a6521edcaa8892d76a32b?rik=c7%2bljlNGrKL5Mg&pid=ImgRaw&r=0'),
          ],
        ),
      ),
    );
  }
}
