

class RoomCard extends StatefulWidget {
  final Function onTap;
  const RoomCard({
    super.key,
    required this.onTap,
  });

  @override
  State<RoomCard> createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
  List<String> fruits = [
    'Orange',
    'Apple',
    'Mango',
    'Banana'
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          color: Colors.white,
          // elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AssetsIamge.room),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Single Room',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: Colors.green,
                        child: Wrap(
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              " 3.5",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "ManduWala",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Rs: 4000/Per month",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          Text(
                            " 3.5 Km",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                          ),
                          Text(
                            " Available  ",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}