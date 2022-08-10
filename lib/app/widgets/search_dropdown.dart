import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

DropdownSearch SearchDropDown(
    {required List items, required String defaultSelect}) {
  return DropdownSearch(
    items: items,
    onChanged: print,
    selectedItem: defaultSelect,
    // validator: (String item) {
    //   if (item == null) {
    //     return "Required field";
    //   } else {
    //     return null;
    //   }
    // },
  );
}
