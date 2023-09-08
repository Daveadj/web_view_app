import 'package:flutter/material.dart';
import 'package:slack_details/web_view.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slack Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: const Image(
                  image: AssetImage('assets/david.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            const Text(
              'SLACK NAME :',
              style: TextStyle(
                letterSpacing: 2.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'DAVID ADJERESE',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const WebViewPage()));
              },
              style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)),
              child: const Text('GitHub'),
            )
          ],
        ),
      ),
    );
  }
}
