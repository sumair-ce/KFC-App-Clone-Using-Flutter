import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfcapp/bloc/priceAndCountUpdate/price_and_count_update_bloc.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/item_details/item_detail.dart';

// ignore: must_be_immutable
class EverydayValue extends StatefulWidget {
  int type;
  EverydayValue({required this.type});
  @override
  State<EverydayValue> createState() => _EverydayValueState();
}

class _EverydayValueState extends State<EverydayValue> {
  // List of item names
  List<String> itemNames = [
    'Krunch Burger',
    'Zingeratha',
    'Rice & Spice',
    'Boneless Strips',
    'Twister',
    'Krunch Burger + Drink',
    'Krunch Chicken Combo',
    'Chicken & Chips',
    '3 PC Chicken',
    'Twister Combo'
  ];

  List<String> itemImagesPath = [
    'lib/core/assets/images/krunch_burger.png',
    'lib/core/assets/images/zingeratha.png',
    'lib/core/assets/images/rice_spice.png',
    'lib/core/assets/images/bonesless_strips.png',
    'lib/core/assets/images/twister.png',
    'lib/core/assets/images/krunch_drink.png',
    'lib/core/assets/images/krunch_combo.png',
    'lib/core/assets/images/chicken_chips.png',
    'lib/core/assets/images/3_pc_chicken.png',
    'lib/core/assets/images/twister_combo.png',
  ];
// List of item descriptions (10 words)
  List<String> itemDescriptions = [
    'Crispy chicken burger with mayo, lettuce, and signature KFC flavor.',
    'Flatbread wrap filled with zinger chicken, sauces, and crunchy vegetables.',
    'Spicy chicken with rice, vegetables, flavorful sauce, and crispy fries.',
    'Tender boneless chicken strips, perfectly seasoned and fried to perfection.',
    'Delicious chicken wrap with fresh vegetables, tangy sauce, and fries.',
    'Krunch burger paired with a refreshing drink for ultimate satisfaction.',
    'Crispy chicken, fries, and a drink in a perfect combo.',
    'Juicy chicken pieces served with fries and signature KFC dipping sauce.',
    'Three crispy chicken pieces with a side of fries and sauce.',
    'Twister wrap, crispy fries, and refreshing drink in one great combo.'
  ];

// List of item prices
  List<String> itemPrices = [
    'Rs 250',
    'Rs 300',
    'Rs 350',
    'Rs 400',
    'Rs 350',
    'Rs 450',
    'Rs 500',
    'Rs 300',
    'Rs 600',
    'Rs 550'
  ];

// List of item names
  List<String> itemNames_Alcarte = [
    'Zinger Burger',
    'Zinger Stacker',
    'Kentucky Burger',
    'Mighty Zinger',
    'Zinger Combo',
    'Zinger Stacker Combo',
    'Kentucky Burger Combo',
    'Mighty Zinger Combo'
  ];

// List of item descriptions (10 words)
  List<String> itemDescriptions_Alcarte = [
    'Crispy zinger fillet with lettuce, mayo, in a sesame bun.',
    'Double zinger fillet stacked with cheese, mayo, and spicy sauce.',
    'Classic fried chicken burger with signature Kentucky flavor and sauces.',
    'Large zinger fillet with extra layers of cheese and sauces.',
    'Zinger burger with fries and refreshing drink in a combo.',
    'Double zinger burger combo with fries and a refreshing drink.',
    'Kentucky burger with fries and a cold drink for satisfaction.',
    'Mighty Zinger combo with fries and a chilled drink.'
  ];

// List of item prices
  List<String> itemPrices_Alcarte = [
    'Rs 450',
    'Rs 600',
    'Rs 550',
    'Rs 650',
    'Rs 700',
    'Rs 850',
    'Rs 800',
    'Rs 900'
  ];

  List<String> itemImagesPath_Alcarte = [
    'lib/core/assets/images/zinger_burger.png',
    'lib/core/assets/images/zinger_stacker.png',
    'lib/core/assets/images/kentucky_burger.png',
    'lib/core/assets/images/mighty_zinger.png',
    'lib/core/assets/images/zinger_combo.png',
    'lib/core/assets/images/zinger_stacker_combo.png',
    'lib/core/assets/images/kentucky_burger_combo.png',
    'lib/core/assets/images/mighty_zinger_combo.png',
  ];

  // List of item names for Krunch Chicken Deal
  List<String> itemNames_Promotion = [
    'Krunch Burger Deal',
  ];

// List of item descriptions for Krunch Chicken Deal (12 words each)
  List<String> itemDescriptions_Promotion = [
    'Crispy burger with lettuce, mayo, and delicious sauce.',
  ];

// List of item prices for Krunch Chicken Deal
  List<String> itemPrices_Promotion = ['Rs 500', 'Rs 800', 'Rs 700', 'Rs 1200'];

// List of item images for Krunch Chicken Deal
  List<String> itemImagesPath_Promotion = [
    'lib/core/assets/images/krunch_burger_deal.png',
  ];

  // List of item names for Boxes
  List<String> itemNames_Boxes = [
    'Crispy Box',
    'Boneless Box',
    'Wow Box',
    'Crispy Duo Box',
    'Xtreme Duo Box'
  ];

// List of item descriptions for Boxes (12 words each)
  List<String> itemDescriptions_Boxes = [
    'Delicious crispy chicken pieces served with fries and a refreshing drink.',
    'Tender boneless chicken strips with crispy fries and delicious dipping sauce.',
    'A variety of chicken pieces with fries, sauces, and a drink included.',
    'Crispy chicken pieces paired with fries and a drink for satisfaction.',
    'Xtreme crispy chicken duo with fries and a refreshing drink included.'
  ];

// List of item prices for Boxes
  List<String> itemPrices_Boxes = [
    'Rs 600',
    'Rs 700',
    'Rs 800',
    'Rs 900',
    'Rs 1000'
  ];

// List of item images for Boxes
  List<String> itemImagesPath_Boxes = [
    'lib/core/assets/images/crispy_box.png',
    'lib/core/assets/images/boneless_box.png',
    'lib/core/assets/images/wow_box.png',
    'lib/core/assets/images/crispy_duo_box.png',
    'lib/core/assets/images/xtreme_duo_box.png',
  ];
// List of item names for Sharing
  List<String> itemNames_Sharing = [
    'Value Bucket',
    'Family Festival 1',
    'Family Festival 2',
    'Family Festival 3'
  ];

// List of item descriptions for Sharing (12 words each)
  List<String> itemDescriptions_Sharing = [
    'Generous bucket of crispy chicken, fries, and dips for sharing fun.',
    'Family-sized meal with chicken, sides, and drinks for unforgettable moments.',
    'Delicious chicken pieces, crispy fries, and sauces for family gatherings.',
    'Ultimate family meal featuring assorted chicken and sides for everyone.'
  ];

// List of item prices for Sharing
  List<String> itemPrices_Sharing = [
    'Rs 1200',
    'Rs 1500',
    'Rs 1800',
    'Rs 2000'
  ];

// List of item images for Sharing
  List<String> itemImagesPath_Sharing = [
    'lib/core/assets/images/value_bucket.png',
    'lib/core/assets/images/family_festival_1.png',
    'lib/core/assets/images/family_festival_2.png',
    'lib/core/assets/images/family_festival_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 6,
                    color: AppColors.primarykfc,
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(
                          getPageNumber(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.045,
                            // Ensure the font size is responsive
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 6,
                    color: AppColors.primarykfc,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.2,
              child: ListView.builder(
                itemCount: getItemCount(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
                    child: Container(
                      height: 165,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            height: 148,
                            decoration: BoxDecoration(
                                color: AppColors.greybutton,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              getItemNames()[index],
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                              softWrap:
                                                  true, // Allows the text to wrap to the next line
                                              overflow: TextOverflow
                                                  .visible, // Prevents truncation
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            color: AppColors.primarykfc,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        getItemDescription()[index],
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Colors.white.withOpacity(0.7)),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'CUSTOMIZE',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w800,
                                            color: AppColors.primarykfc),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        getItemPrice()[index],
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      getItemImagePath()[index],
                                      fit: BoxFit
                                          .contain, // Ensures image scales within the available space
                                      width: MediaQuery.of(context).size.width *
                                          0.3, // Adjust the width dynamically
                                      height: MediaQuery.of(context)
                                              .size
                                              .height *
                                          0.15, // Adjust the height dynamically
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 7, // Half button down from the container
                            child: Container(
                              height: 23,
                              width: MediaQuery.of(context).size.width / 3,
                              child: BlocBuilder<PriceAndCountUpdateBloc,
                                  PriceAndCountUpdateState>(
                                builder: (context, state) {
                                  return ElevatedButton(
                                    onPressed: () {
                                      state.totalprice = state.totalprice +
                                          int.parse(getItemPrice()[index]
                                              .replaceAll(
                                                  RegExp(r'[^0-9]'), ''));
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ItemDetail(
                                              imagePath:
                                                  getItemImagePath()[index],
                                              name: getItemNames()[index],
                                              description:
                                                  getItemDescription()[index],
                                              price: getItemPrice()[index],
                                            ),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.primarykfc,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: EdgeInsets.zero),
                                    child: Text(
                                      'ADD TO BUCKET',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.035),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String getPageNumber() {
    if (widget.type == 1) {
      return 'Everyday meal';
    } else if (widget.type == 2) {
      return 'Al-Carte & Combo';
    } else if (widget.type == 3) {
      return 'Promotion';
    } else if (widget.type == 4) {
      return 'Signature Boxes';
    } else if (widget.type == 5) {
      return 'Sharing';
    } else {
      return '';
    }
  }

  int getItemCount() {
    if (widget.type == 1) {
      return itemNames.length;
    } else if (widget.type == 2) {
      return itemNames_Alcarte.length;
    } else if (widget.type == 3) {
      // Type for Krunch Chicken Deal
      return itemNames_Promotion.length;
    } else if (widget.type == 4) {
      // Type for Boxes
      return itemNames_Boxes.length;
    } else if (widget.type == 5) {
      // New type for Sharing
      return itemNames_Sharing.length;
    } else {
      return 0;
    }
  }

  List<String> getItemNames() {
    if (widget.type == 1) {
      return itemNames;
    } else if (widget.type == 2) {
      return itemNames_Alcarte;
    } else if (widget.type == 3) {
      // Type for Krunch Chicken Deal
      return itemNames_Promotion;
    } else if (widget.type == 4) {
      // Type for Boxes
      return itemNames_Boxes;
    } else if (widget.type == 5) {
      // New type for Sharing
      return itemNames_Sharing;
    } else {
      return [];
    }
  }

  List<String> getItemDescription() {
    if (widget.type == 1) {
      return itemDescriptions;
    } else if (widget.type == 2) {
      return itemDescriptions_Alcarte;
    } else if (widget.type == 3) {
      // Type for Krunch Chicken Deal
      return itemDescriptions_Promotion;
    } else if (widget.type == 4) {
      // Type for Boxes
      return itemDescriptions_Boxes;
    } else if (widget.type == 5) {
      // New type for Sharing
      return itemDescriptions_Sharing;
    } else {
      return [];
    }
  }

  List<String> getItemPrice() {
    if (widget.type == 1) {
      return itemPrices;
    } else if (widget.type == 2) {
      return itemPrices_Alcarte;
    } else if (widget.type == 3) {
      // Type for Krunch Chicken Deal
      return itemPrices_Promotion;
    } else if (widget.type == 4) {
      // Type for Boxes
      return itemPrices_Boxes;
    } else if (widget.type == 5) {
      // New type for Sharing
      return itemPrices_Sharing;
    } else {
      return [];
    }
  }

  List<String> getItemImagePath() {
    if (widget.type == 1) {
      return itemImagesPath;
    } else if (widget.type == 2) {
      return itemImagesPath_Alcarte;
    } else if (widget.type == 3) {
      // Type for Krunch Chicken Deal
      return itemImagesPath_Promotion;
    } else if (widget.type == 4) {
      // Type for Boxes
      return itemImagesPath_Boxes;
    } else if (widget.type == 5) {
      // New type for Sharing
      return itemImagesPath_Sharing;
    } else {
      return [];
    }
  }
}
