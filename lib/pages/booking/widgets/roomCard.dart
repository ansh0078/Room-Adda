
class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsIamge.room),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room Name", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(
                      "Address",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Card(
                      elevation: 2,
                      child: Text("  Completed  "),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 0.5,
            width: MediaQuery.sizeOf(context).width / 1.2,
            color: Colors.black,
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 2,
            color: Colors.green.shade100,
            child: const Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                Icon(Icons.check_circle_rounded),
                SizedBox(width: 5),
                Text("hikfdksjksdj;kdkjljdfhljdsfhj"),
                SizedBox(width: 10)
              ],
            ),
          )
        ],
      ),
    );
  }
}