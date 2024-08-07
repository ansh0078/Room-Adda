

class RoomBooking extends StatelessWidget {
  const RoomBooking({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Center(
          child: Text(
            AppString.bookingName,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gupta House",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Address ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                line(width / 0.1),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Id",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "#48904",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date of Booking",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          "20/04/2024",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                line(width / 0.1),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reservation By",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Ansh Raj",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Type of Room",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Single Room",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                line(width / 0.1),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Owner Name",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Gupta Ji",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Checked-in date",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          "041/05/2024",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                line(width / 0.1),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Amount",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Room Price:  4000",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Gst Price:   0",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 140),
          Padding(
            padding: const EdgeInsets.all(30),
            child: PrimaryBtn(
              btnName: "Pay",
              icon: Icons.payment,
              ontap: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget line(double width) {
    return Container(
      height: 0.3,
      width: width,
      color: Colors.black,
    );
  }
}