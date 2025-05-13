import 'package:flutter/material.dart';
import 'package:kfcapp/ui/screens/about_us/about_us_screen.dart';
import 'package:kfcapp/ui/screens/my_favorite/my_favorite.dart';

class SideDrawer extends StatelessWidget {
  final List<String> drawer_term = [
    'My Favorites',
    'My Addresses',
    'My Orders',
    'Store Locator',
    'Track Order',
    'Explore Menu',
    'About Us',
    'Feedback',
    'Terms & Conditions',
    'Privacy Policy',
    'Contact Us',
    'Mitao Bhook',
    'Scholarships',
    'Careers',
  ];

  final List<Widget Function()> drawer_functions = [
    () => MyFavorite(),
    () => AboutUsScreen(),
  ];

  // Corresponding icons for each drawer item
  final List<IconData> drawer_icons = [
    Icons.favorite,
    Icons.location_on,
    Icons.shopping_bag,
    Icons.store,
    Icons.track_changes,
    Icons.menu_book,
    Icons.info,
    Icons.feedback,
    Icons.gavel,
    Icons.privacy_tip,
    Icons.contact_mail,
    Icons.fastfood,
    Icons.book_sharp,
    Icons.work,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Muhammad Sumair',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          // ListView.builder to show text and icon in a row
          Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: drawer_term.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(left: 15),
                  visualDensity: VisualDensity(vertical: -4),
                  leading: Icon(
                    drawer_icons[index], // Display the corresponding icon
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    drawer_term[index], // Display the corresponding text
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => drawer_functions[index](),
                        ));
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
