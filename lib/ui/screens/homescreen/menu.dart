import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:kfcapp/ui/screens/entire_menu/everyday_value.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: _buildMenuItem(220, 0, context, 'Everyday\nValue',
                'lib/core/assets/images/explore_everyday.png', () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EverydayValue(type: 1);
          }));
        })),
        SizedBox(width: 5),
        Expanded(
          child: Column(
            children: [
              _buildMenuItem(105, 0, context, 'Al-Carte & \nCombo',
                  'lib/core/assets/images/explorecombo.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EverydayValue(type: 2);
                }));
              }),
              SizedBox(height: 5),
              _buildMenuItem(105, 0, context, 'Promotions',
                  'lib/core/assets/images/explore_promotion.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EverydayValue(type: 3);
                }));
              }),
            ],
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Column(
            children: [
              _buildMenuItem(105, 0, context, 'Signature\nBox',
                  'lib/core/assets/images/explore_signaturebox.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EverydayValue(type: 4);
                }));
              }),
              SizedBox(height: 5),
              _buildMenuItem(105, 8, context, 'Sharing',
                  'lib/core/assets/images/explore_sharing.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EverydayValue(type: 5);
                }));
              }),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(
      double heightOfButton,
      double PositionedNumber,
      BuildContext context,
      String title,
      String imagePath,
      VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: DottedBorder(
        color: Colors.white,
        strokeWidth: 0.5,
        dashPattern: [3, 3],
        borderType: BorderType.RRect,
        radius: Radius.circular(5),
        child: Container(
          height: heightOfButton,
          width: MediaQuery.of(context).size.width / 3.33,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Positioned(
                //left: PositionedNumber,
                child: Image.asset(
                  imagePath,
                  height: 85,
                  //width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 8),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 3.33,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        height: 1,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
