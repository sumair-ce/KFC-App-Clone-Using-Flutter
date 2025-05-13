import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 20),
          InkWell(
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.white.withOpacity(0.7),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'No Address Selected',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
            onTap: () {},
          ),
          Spacer(),
          Image.asset(
            'assets/images/kfclogo.png',
            height: 75, // Adjust height as needed
          ),
        ],
      ),
    );
  }
}
