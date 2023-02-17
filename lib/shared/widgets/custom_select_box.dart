import 'package:flutter/material.dart';
import 'package:my_siri/shared/enum/widget_enum.dart';

class CustomSelectBox extends StatelessWidget {
  const CustomSelectBox(
      {super.key, required this.styleType, required this.options});
  final SelectBoxStyleType styleType;
  final List<Map<String, dynamic>> options;
  static const String dropdownValue = '카테고리 1';

  Column buildColumnMenu() {
    List<Widget> children = [];

    for (var i = 0; i < options.length; i++) {
      children.add(
        ListTile(
          title: Text(options[i]['label']),
          onTap: () => print(options[i]['value']),
        ),
      );
    }

    return Column(children: children);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 200,
              child: buildColumnMenu(),
            );
          },
        );
      },
      child: styleType == SelectBoxStyleType.combo
          ? const ComboBox(dropdownValue: dropdownValue)
          : const TextBox(dropdownValue: dropdownValue),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
    required this.dropdownValue,
  });
  final String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(dropdownValue),
      ],
    );
  }
}

class ComboBox extends StatelessWidget {
  const ComboBox({
    super.key,
    required this.dropdownValue,
  });

  final String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 1),
            blurRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            dropdownValue,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600],
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}
