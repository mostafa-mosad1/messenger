
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String image;

  const ChatScreen({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.blue,
            )),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12)),
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: const Text(
                        "Hello"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: const Text(
                        "hello"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12)),
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: const Text(
                        "How Are You Man"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: const Text(
                        "I'm fine"),
                  ),
                ),
              ],
            ),
            Column(children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email address';
                  }
                },
                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  labelText: 'message',
                  prefixIcon: Icon(
                    Icons.message,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ],)
          ],
        )
      ),
    );
  }
}