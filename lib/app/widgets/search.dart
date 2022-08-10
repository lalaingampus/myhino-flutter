import 'package:flutter/material.dart';

Container Search({
  required onTap,
}) {
  return Container(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 345,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(13),
                      border: InputBorder.none),
                  onChanged: (value) {
                    // Do something
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
