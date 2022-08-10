import 'package:flutter/material.dart';

Container PaggingButton(
    {required double currentPage, required double totalPage}) {
  return Container(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 100,
          width: 400,
          child: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[400],
                  image: DecorationImage(
                    image:
                        AssetImage('assets/mobile/images/ic-arrow-to-left.png'),
                    scale: 1,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 45,
                width: 45,
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 45,
                width: 110,
                padding: EdgeInsets.fromLTRB(88, 14, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Text(
                  "${currentPage}",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 55,
                width: 47,
                padding: EdgeInsets.fromLTRB(2, 18, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "/ ${totalPage}",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 45,
                width: 45,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 18,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/mobile/images/right.png',
                    ),
                    scale: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
