import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

final dateFormat = DateFormat("yyyy-MM-dd");

DateTimeField DateField({required context}) {
  return DateTimeField(
    format: dateFormat,
    onShowPicker: (context, currentValue) {
      return showDatePicker(
        context: context,
        firstDate: DateTime(1900),
        initialDate: currentValue ?? DateTime.now(),
        lastDate: DateTime(2100),
      );
    },
  );
}
