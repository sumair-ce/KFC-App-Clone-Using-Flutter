import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfcapp/bloc/pickup/pickup_bloc.dart';
import 'package:kfcapp/core/constants/dimensions.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/homescreen/best_seller.dart';
import 'package:kfcapp/ui/screens/homescreen/delivery_pickup.dart';
import 'package:kfcapp/ui/screens/homescreen/image_slider.dart';
import 'package:kfcapp/ui/screens/homescreen/menu.dart';
import 'package:kfcapp/ui/screens/homescreen/side_drawer.dart';
import 'package:kfcapp/ui/screens/homescreen/top_deals.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              Builder(builder: (context) {
                return IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      Scaffold.of(context).openDrawer();
                    });
                  },
                );
              }),
              SizedBox(width: 5),
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
                    BlocBuilder<PickupBloc, PickupState>(
                      builder: (context, state) {
                        return state.PickupPoint == 'No Adress Selected'
                            ? Text(
                                state.PickupPoint,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pickup from',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    state.PickupPoint,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  )
                                ],
                              );
                      },
                    )
                  ],
                ),
                onTap: () {},
              ),
              Spacer(),
              Image.asset(
                'lib/core/assets/images/kfclogo.png',
                height: 75,
              ),
            ],
          ),
        ),
      ),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDimensions().screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DeliveryPickup(),
              SizedBox(
                height: 10,
              ),
              Text(
                'What\'s New?',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              imageSlider(),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 27,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.primarykfc,
                    shape: const RoundedRectangleBorder(),
                    side: BorderSide(width: 0),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'REORDER',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold), // Text color and size
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Explore Menu',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Menu(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Best Seller',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              BestSeller(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Top Deals',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              TopDeals(),
              SizedBox(
                height: 10,
              ),
              Image.asset('lib/core/assets/images/pickup_banner.png')
            ],
          ),
        ),
      ),
    );
  }
}
