import 'package:flutter/material.dart';
import 'package:roomadda/Config/string.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Map chat = {
    "Name": [
      'Person1',
      'Person2',
      'Person3',
      'Person4',
      'Person5',
      'Person6',
      'Person7'
    ],
    "Message": [
      "New message",
      "New message",
      "New message",
      "New message",
      "New message",
      "New message",
      "New Message"
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Center(
          child: Text(
            AppString.appName,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    prefixIcon: const Icon(Icons.search_outlined),
                    labelText: 'Search Location',
                    hintText: 'Enter your location'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chat["Name"].length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    onDismissed: (direction) {
                      if (direction == DismissDirection.startToEnd) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(chat['Name'][index]),
                          backgroundColor: Colors.red,
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(chat['Name'][index]),
                          backgroundColor: Colors.green,
                        ));
                      }
                    },
                    key: Key("aaa"),
                    background: Container(
                      color: Colors.red,
                      child: Icon(Icons.delete),
                    ),
                    secondaryBackground: Container(
                      color: Colors.green,
                    ),
                    // key: null,
                    child: ListTile(
                      onTap: () {
                        // print((chat['nam'][index]));
                      },
                      leading: Icon(Icons.person),
                      title: Text(chat['Name'][index]),
                      subtitle: Text(chat['Message'][index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}