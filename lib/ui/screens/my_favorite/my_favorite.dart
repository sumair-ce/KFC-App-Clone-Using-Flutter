import 'package:flutter/material.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/entire_menu/everyday_value.dart';

class MyFavorite extends StatefulWidget {
  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Favorites',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 20), // Space between title and content
            Expanded(
              // Use Expanded to take up remaining space
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 100,
                      color: AppColors.primarykfc,
                    ),
                    Text('No Favorites yet',
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    SizedBox(height: 15),
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                          color: AppColors.primarykfc,
                          borderRadius: BorderRadius.circular(5)),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            side: BorderSide.none,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EverydayValue(type: 1),
                              ));
                        },
                        child: Text('Explore Menu',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
