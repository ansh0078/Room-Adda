
import 'package:flutter/material.dart';
import 'package:roomadda/config/string.dart';
import 'package:roomadda/pages/booking/widgets/roomCard.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({super.key});

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  List<String> bookingName = [
    'Ongoing',
    'Completed',
    'Canceled'
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
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bookingName.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      // ctrl.filterByCategory(ctrl.productCategory[index].name ?? '');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Chip(
                        label: Text(bookingName[index]),
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const RoomCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}