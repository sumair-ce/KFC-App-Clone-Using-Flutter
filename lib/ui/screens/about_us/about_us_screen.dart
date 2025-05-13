import 'package:flutter/material.dart';
import 'package:kfcapp/core/theme/colors.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About Us',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'KFC entered Pakistan in 1997 and since then, it’s been a journey full of excitement and Finger Lickin’ goodness! The first KFC restaurant opened in Pakistan opened in Gulshan Iqbal, Karachi and now our Finger Lickin’ Chicken is available in 37 cities with over 128 restaurants! Being the most loved fast food chain in Pakistan, KFC leaves no stone unturned to provide its customers the most delicious chicken and an excellent dining experience.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, left: 20, right: 20, bottom: 20),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 25),
                          child: Text(
                            'WE PRIDE OURSELVES ON USING QUALITY HALAL CHICKEN AND LOCAL INGREDIENTS FROM TRUSTED SUPPLIERS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.primarykfc),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.greybutton),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.greybutton),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, top: 20, bottom: 10),
                      child: Image.asset('lib/core/assets/images/history.png'),
                    ),
                    Text('History',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 15, left: 15, right: 15),
                      child: Text(
                        'KFC entered Pakistan in 1997 and since then, it’s been a journey full of excitement and Finger Lickin’ goodness! The first KFC restaurant opened in Pakistan opened in Gulshan Iqbal, Karachi and now our Finger Lickin’ Chicken is available in 37 cities with over 128 restaurants! Being the most loved fast food chain in Pakistan, KFC leaves no stone unturned to provide its customers the most delicious chicken and an excellent dining experience.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
