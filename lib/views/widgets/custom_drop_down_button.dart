import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomDropDownButton extends StatelessWidget {
  CustomDropDownButton({
    super.key,
    this.onChanged,
  });

  final void Function(DateTimeIntervalType?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: DropdownButtonFormField<DateTimeIntervalType>(
        value: DateTimeIntervalType.auto,
        decoration: const InputDecoration(
          label: Text('Select Interval Time'),
          border: OutlineInputBorder(), // Add border around the dropdown
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor), // Border color
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: kPrimaryColor, width: 1), // Border color when focused
          ),
          filled: true,
          fillColor: Colors.white, // Background color of the dropdown field
        ),
        onChanged: onChanged,
        items: items,
        dropdownColor: Colors.white, // Background color of the dropdown menu
      ),
    );
  }

  final List<DropdownMenuItem<DateTimeIntervalType>> items = [
    const DropdownMenuItem<DateTimeIntervalType>(
      value: DateTimeIntervalType.auto,
      child: Text('Auto'),
    ),
    const DropdownMenuItem<DateTimeIntervalType>(
      value: DateTimeIntervalType.minutes,
      child: Text('Minutes'),
    ),
    const DropdownMenuItem<DateTimeIntervalType>(
      value: DateTimeIntervalType.hours,
      child: Text('Hours'),
    ),
    const DropdownMenuItem<DateTimeIntervalType>(
      value: DateTimeIntervalType.days,
      child: Text('Days'),
    ),
    const DropdownMenuItem<DateTimeIntervalType>(
      value: DateTimeIntervalType.months,
      child: Text('Months'),
    ),
  ];
}
// 