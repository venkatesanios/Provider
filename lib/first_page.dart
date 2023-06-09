import 'package:flutter/material.dart';
import 'package:git1/name_provider.dart';
import 'package:git1/second_page.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController firstName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstnameProvider = Provider.of<NameProvider>(context, listen: true);
    firstName.text = firstnameProvider.name;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          'First Page',
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
              controller: firstName,
              maxLines: 1,
              style: const TextStyle(
                color: Color.fromARGB(179, 220, 16, 16),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your First Name ',
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
                firstnameProvider.nameChange(firstName.text);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 44, 157, 165),
        child: const Icon(Icons.forward),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
      ),
    );
  }
}
