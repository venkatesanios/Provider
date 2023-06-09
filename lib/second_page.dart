import 'package:flutter/material.dart';
import 'package:git1/name_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController secondName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    NameProvider SecondnameProvider =
        Provider.of<NameProvider>(context, listen: true);
    secondName.text = SecondnameProvider.name;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 150, 165),
      appBar: AppBar(
        title: const Text(
          'Second Page',
          textAlign: TextAlign.center,
        ),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: secondName,
              maxLines: 1,
              style: const TextStyle(
                color: Color.fromARGB(195, 242, 224, 135),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Second Name ',
                hintStyle: TextStyle(color: Colors.white60),
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: Text('Change'),
              onPressed: () {
                SecondnameProvider.nameChange(secondName.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
