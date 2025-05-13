import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/item_details/item_detail.dart';

class TopDeals extends StatefulWidget {
  @override
  State<TopDeals> createState() => _TopDealsState();
}

class _TopDealsState extends State<TopDeals> {
  final List<String> item_name = [
    'Twister Combo',
    'Zinger Stacker Combo',
    'Crispy Duo Box',
    'Family Festival 3',
  ];

  final List<String> item_path = [
    'lib/core/assets/images/twister_combo.png',
    'lib/core/assets/images/zinger_stacker_combo.png',
    'lib/core/assets/images/crispy_duo_box.png',
    'lib/core/assets/images/family_festival_3.png',
  ];

  final List<String> item_price = [
    'Rs 290',
    'Rs 690',
    'Rs 570',
    'Rs 750',
  ];

  List<String> item_descriptions = [
    'A flavorful wrap filled with spicy chicken, fresh vegetables, and zesty sauce.',
    'Two crispy chicken fillets stacked high with cheese and spicy mayo in a bun.',
    'A delightful box featuring crispy chicken pieces, fries, and dipping sauce for sharing.',
    'An ultimate family feast with a variety of chicken pieces, sides, and drinks included.',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110, // Set a specific height for the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item_name.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 5),
            child: DottedBorder(
                color: Colors.white,
                strokeWidth: 0.5,
                dashPattern: [3, 3],
                borderType: BorderType.RRect,
                radius: Radius.circular(5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetail(
                            imagePath: item_path[index],
                            name: item_name[index],
                            description: item_descriptions[index],
                            price: item_price[index],
                          ),
                        ));
                  },
                  child: Container(
                    height: 110,
                    width: 245,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 90,
                          child: Center(
                            child: Image.asset(
                              item_path[index],
                              height: 90,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(item_name[index],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text(item_price[index],
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 0.5,
                              width: 120,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 120,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    height: 18, // Increase the height
                                    width: 40, // Increase the width
                                    child: OutlinedButton(
                                      style: ButtonStyle(
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5), // Border radius of 5
                                          ),
                                        ),
                                        side: WidgetStateProperty.all(
                                            BorderSide(
                                                color: AppColors.primarykfc)),
                                        padding: WidgetStateProperty.all(
                                            EdgeInsets.zero), // Remove padding
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'VIEW',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.primarykfc,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }

  Container _kfc_strips(double height, double width) {
    return Container(
      height: height,
      width: width,
      color: AppColors.primarykfc,
    );
  }
}
