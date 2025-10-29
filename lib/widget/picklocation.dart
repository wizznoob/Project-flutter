import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three'];

class PickLocation extends StatefulWidget {
  const PickLocation({super.key});

  @override
  State<PickLocation> createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocation> {
  String? picklocationValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, right: 16, left: 16),
      padding: EdgeInsets.all(12),
      height: 50,
      width: double.infinity,
      color: Colors.lightBlue,
      child: DropdownButton<String>(
        value: picklocationValue,
        isExpanded: true,
        hint: Text('Pilih Lokasi'),
        icon: Icon(Icons.arrow_drop_down),
        underline: Container(height: 2, color: Colors.transparent),
        onChanged: (String? value) {
          setState(() {
            picklocationValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
      ),
    );
  }
}
