import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  const RadioGroup({super.key});

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  String _selectedRadioValue = 'Option 1';

  void _handleRadioValueChange(String value) {
    setState(() {
      _selectedRadioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text('남성'),
          value: '남성',
          groupValue: _selectedRadioValue,
          onChanged: (newvalue) => _handleRadioValueChange,
        ),
        RadioListTile(
          title: const Text('여성'),
          value: '여성',
          groupValue: _selectedRadioValue,
          onChanged: (newvalue) => _handleRadioValueChange,
        ),
        RadioListTile(
          title: const Text('선택 안함'),
          value: '선택 안함',
          groupValue: _selectedRadioValue,
          onChanged: (newvalue) => _handleRadioValueChange,
        ),
      ],
    );
  }
}
