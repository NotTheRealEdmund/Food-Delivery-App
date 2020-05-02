import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black45,
          ),
          SizedBox(width: 20),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for your favourite food!",
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                hintStyle: TextStyle(color: Colors.black87),
              ),
            ),
          )
        ],
      ),
    );
  }
}
