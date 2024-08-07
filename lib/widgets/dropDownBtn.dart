
String? selectedValue;

class DropDownBtn extends StatelessWidget {
  final List<String> items;
  final String selectedItemText;
  final Function(String?) onSelected;
  final double width;
  const DropDownBtn({super.key, required this.items, required this.selectedItemText, required this.onSelected, required this.width});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              selectedItemText,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              onSelected(value);
            },
            buttonStyleData: ButtonStyleData(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              width: width,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}