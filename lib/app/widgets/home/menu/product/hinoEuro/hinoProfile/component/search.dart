import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SearchSection extends StatefulWidget {
  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(

                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  height: 70,
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(14),
                    child: Container(
                        color: Colors.grey[200],

                        child: TextField(
                          textAlign: TextAlign.left,

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Semua',
                            suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Colors.grey
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15),
                          ),
                        )
                    ),
                  ),

                ),
                SizedBox(height: 5),
                Container(

                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  height: 70,
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(14),
                    child: Container(


                        child: TextField(
                          textAlign: TextAlign.left,

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Material(
                              elevation: 4.0,
                              color: Colors.grey[200],

                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(13.0),
                                bottomRight: Radius.circular(13.0),
                              ),
                              child: Icon(Icons.search, color: Colors.black),
                            ),
                            hintText: 'Cari Nomor Plat / Kabin',
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15),
                          ),
                        )
                    ),
                  ),

                ),

              ],
            )
        )
    );
  }
}
