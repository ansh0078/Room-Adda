
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomadda/config/images.dart';
import 'package:roomadda/pages/room/booking.dart';
import 'package:roomadda/widgets/primaryBtn.dart';

class RoomDescriptionPage extends StatelessWidget {
  const RoomDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetsImage.room),
                    ),
                  )),
              Container(
                height: 380,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Single Room',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3.5',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Rs: 4000/Per month",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '400 Km',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Available',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Description :',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      children: [
                        Text('1 big hall room for rent at lalitpur, ktm with the facilities of bike parking and tap water.It offers 1 bedroom,and a 1 common bathroom for whole flat. It is suitable for student only. Price is negotiable for student only.  ')
                      ],
                    )
                  ],
                ),
              ),
              PrimaryBtn(
                  btnName: "Book Now",
                  icon: Icons.book_online,
                  ontap: () {
                    Get.to(const RoomBooking());
                  })
            ],
          ),
        ),
      ),
    );
  }
}