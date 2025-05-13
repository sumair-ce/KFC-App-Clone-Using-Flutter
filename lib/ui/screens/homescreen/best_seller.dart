import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/item_details/item_detail.dart';

class BestSeller extends StatefulWidget {
  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  final List<String> item_name = [
    'Krunch Burger',
    'Hot Wings Bucket',
    'Krunch Combo',
    'Mighty Zinger',
  ];

  final List<String> item_path = [
    'lib/core/assets/images/krunch_burger.png',
    'lib/core/assets/images/hot_wings_bucket.png',
    'lib/core/assets/images/krunch_combo.png',
    'lib/core/assets/images/mighty_zinger.png',
  ];

  final List<String> item_price = [
    'Rs 290',
    'Rs 690',
    'Rs 570',
    'Rs 750',
  ];

  List<String> item_descriptions = [
    'A flavorful fried chicken burger with crispy coating and fresh toppings.',
    'Spicy and crunchy chicken wings served with a tangy dipping sauce.',
    'A hearty combo featuring a Krunch burger, hot wings, fries, and a drink.',
    'A zesty chicken fillet burger with a spicy crunch and crisp lettuce.',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185, // Set a specific height for the ListView
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
                    height: 185,
                    width: 125,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _kfc_strips(20, 15),
                            SizedBox(
                              width: 5,
                            ),
                            _kfc_strips(20, 15),
                            SizedBox(
                              width: 5,
                            ),
                            _kfc_strips(20, 15),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          item_name[index],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 60,
                            height: 20,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                item_price[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                            color: AppColors.primarykfc,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 100,
                          height: 90,
                          child: Image.asset(
                            item_path[index],
                            height: 90,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
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
