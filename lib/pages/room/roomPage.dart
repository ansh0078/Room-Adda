import 'package:flutter/material.dart';
import 'package:roomadda/config/string.dart';
import 'package:roomadda/pages/room/widgets/roomCard.dart';
import 'package:roomadda/pages/room/widgets/roomDescription.dart';
import 'package:roomadda/widgets/dropDownBtn.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  List room = [
    'room',
    3,
    3,
    3,
    3
  ];
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: DropDownBtn(
                    items: const [
                      "Low to High",
                      "High to Low"
                    ],
                    selectedItemText: "Sort",
                    onSelected: (selected) {},
                    width: 150,
                  ),
                ),
                Flexible(
                  child: DropDownBtn(
                    items: const [
                      '3000',
                      '4000',
                      '5000',
                      '6000',
                      '7000'
                    ],
                    selectedItemText: "Sort",
                    onSelected: (selected) {},
                    width: 150,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return RoomCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RoomDescriptionPage()),
                      );
                    },
                  );
                }),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
