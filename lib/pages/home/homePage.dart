
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map room = {
    'name': [
      'Single',
      'Double',
      'Hostel',
      'Pg',
      'Roomm'
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
      body: ListView(
        children: [
          Container(
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        prefixIcon: const Icon(Icons.location_on_rounded),
                        labelText: 'Search Location',
                        hintText: 'Enter your location',
                        suffixIcon: const Icon(Icons.search)),
                  ),
                ),
                const SizedBox(height: 20),
                const SliderScreen(),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Services..",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: room['name'].length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 1.5,
                    ),
                    itemBuilder: (context, index) {
                      return cardBox(room['name'][index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardBox(String text) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.to(RoomPage());
      },
      child: Container(
        margin: EdgeInsets.all(15),
        child: Material(
          // margin: const EdgeInsets.all(10),
          borderRadius: BorderRadius.circular(10),
          elevation: 10,
          child: Center(
            child: Text(
              '$text\nRoom',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}