
class StudentVerification extends StatelessWidget {
  const StudentVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AuthBody(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              padding: const EdgeInsets.all(30),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.5),
              ),
              child: Column(
                children: [
                  Text(
                    "Student Verification",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        "College",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  // const SizedBox(height: 2),
                  Row(
                    children: [
                      Flexible(
                        child: DropDownBtn(
                          items: const [
                            "Dev Bhoomi Uttarakhand University"
                          ],
                          selectedItemText: "-- Select College--",
                          onSelected: (onSelected) {},
                          width: 300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uid",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text("fggdhg")
                        ],
                      )
                    ],
                  )
                  // TextField(
                  //   decoration: InputDecoration(bo),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}