import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfcapp/bloc/priceAndCountUpdate/price_and_count_update_bloc.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/homescreen/kfc_strips.dart';

class ItemDetail extends StatefulWidget {
  final String imagePath;
  final String name;
  final String description;
  final String price;

  ItemDetail(
      {required this.imagePath,
      required this.name,
      required this.description,
      required this.price});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  List<String> drinksImagePath = [
    'lib/core/assets/images/mirinda.png',
    'lib/core/assets/images/pepsi_half_litre.png',
    'lib/core/assets/images/dew.png',
    'lib/core/assets/images/7up.png',
    'lib/core/assets/images/pepsi_1_litre.png',
    'lib/core/assets/images/water.png',
  ];

  List<String> drinksName = [
    'Mirinda',
    'Pepsi Regular',
    'Mountain Dew',
    '7up',
    'Pepsi 1 ltr',
    'Mineral Water'
  ];

  List<String> drinksPrice = ['90', '120', '130', '90', '250', '70'];

  List<String> AddOnsImagePath = [
    'lib/core/assets/images/coleslaw.png',
    'lib/core/assets/images/dinner_roll.png',
    'lib/core/assets/images/large_fries.png',
    'lib/core/assets/images/one_pc_chicken.png',
    'lib/core/assets/images/mayo_dip.png',
    'lib/core/assets/images/vietnamese_dip.png',
    'lib/core/assets/images/fries_bucket.png',
  ];

  List<String> AddOnsName = [
    'Coleslaw',
    'Dinner Roll',
    'Large Fries',
    '1 Pc Chicken',
    'Mayo Dip',
    'Vietnamese Dip',
    'Fries Bucket'
  ];

  List<String> AddOnsPrice = ['90', '120', '130', '90', '250', '70'];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                widget.imagePath,
                fit: BoxFit.fitHeight,
                height: screenHeight / 3.5,
                width: screenWidth,
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 10,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    KFCstrips(),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose an option',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 60,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.greybutton.withOpacity(0.4),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    widget.name,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    '(${widget.price})',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.radio_button_checked,
                                    color: AppColors.primarykfc,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Drink',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Optional',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Drinks_AddOns_Column(screenWidth, drinksName,
                                drinksPrice, drinksImagePath),
                            Row(
                              children: [
                                Text(
                                  'Add Ons',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Optional',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Drinks_AddOns_Column(screenWidth, AddOnsName,
                                AddOnsPrice, AddOnsImagePath),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          BlocBuilder<PriceAndCountUpdateBloc, PriceAndCountUpdateState>(
        builder: (context, state) {
          return BottomAppBar(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              color: const Color.fromARGB(255, 53, 0, 10),
              child: Row(
                children: [
                  Container(
                    width: screenWidth * 0.25,
                    child: Row(
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.primarykfc)),
                            child: Center(
                              child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    context
                                        .read<PriceAndCountUpdateBloc>()
                                        .add(decrementcounter());
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.grey,
                                    size: 20,
                                  )),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          state.counter.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.primarykfc)),
                            child: Center(
                              child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    context
                                        .read<PriceAndCountUpdateBloc>()
                                        .add(incrementcounter());
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                    size: 20,
                                  )),
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: AppColors.primarykfc,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Rs ${state.totalprice.toString()}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'CHECK OUT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }

  Column Drinks_AddOns_Column(double screenWidth, List<String> Name,
      List<String> Price, List<String> ImagePath) {
    return Column(
      children: List.generate(drinksName.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            padding: EdgeInsets.only(right: 15),
            height: 60,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.greybutton.withOpacity(0.4),
            ),
            child: Row(
              children: [
                Image.asset(ImagePath[index]),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Name[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '(Rs ${Price[index]})',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 20, // Increase the height
                  width: 50, // Increase the width
                  child: BlocBuilder<PriceAndCountUpdateBloc,
                      PriceAndCountUpdateState>(
                    builder: (context, state) {
                      return OutlinedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primarykfc),
                          side: MaterialStateProperty.all(
                              BorderSide(color: AppColors.primarykfc)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.zero), // Remove padding
                        ),
                        onPressed: () {
                          context
                              .read<PriceAndCountUpdateBloc>()
                              .add(updateprice(int.parse(Price[index])));
                        },
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Row KFCstrips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        KfcStrips(height: 25, width: 15),
        SizedBox(width: 5),
        KfcStrips(height: 25, width: 15),
        SizedBox(width: 5),
        KfcStrips(height: 25, width: 15),
      ],
    );
  }
}
