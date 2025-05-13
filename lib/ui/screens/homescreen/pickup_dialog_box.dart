import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfcapp/bloc/pickup/pickup_bloc.dart';
import 'package:kfcapp/core/theme/colors.dart';
import 'package:kfcapp/ui/screens/homescreen/kfc_strips.dart';

class PickupDialogBox extends StatefulWidget {
  @override
  State<PickupDialogBox> createState() => _PickupDialogBoxState();
}

class _PickupDialogBoxState extends State<PickupDialogBox> {
  int? selectedIndex; // Keep track of selected index

  final List<Map<String, dynamic>> places = [
    {
      'place': 'Karachi',
      'subplace': 'Clifton',
      'openTime': '9:00 AM',
      'closeTime': '11:00 PM',
      'distance': '5 km'
    },
    {
      'place': 'Lahore',
      'subplace': 'Gulberg',
      'openTime': '10:00 AM',
      'closeTime': '10:00 PM',
      'distance': '8 km'
    },
    {
      'place': 'Islamabad',
      'subplace': 'Blue Area',
      'openTime': '8:30 AM',
      'closeTime': '10:30 PM',
      'distance': '6 km'
    },
    {
      'place': 'Peshawar',
      'subplace': 'University Town',
      'openTime': '9:30 AM',
      'closeTime': '10:00 PM',
      'distance': '7 km'
    },
    {
      'place': 'Quetta',
      'subplace': 'Sariab Road',
      'openTime': '9:00 AM',
      'closeTime': '9:30 PM',
      'distance': '4.5 km'
    },
    {
      'place': 'Multan',
      'subplace': 'Cantt',
      'openTime': '10:00 AM',
      'closeTime': '9:00 PM',
      'distance': '10 km'
    },
    {
      'place': 'Faisalabad',
      'subplace': 'D Ground',
      'openTime': '8:00 AM',
      'closeTime': '8:00 PM',
      'distance': '3.5 km'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      backgroundColor: Colors.black,
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 1.25,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KfcStrips(
                    height: 20,
                    width: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  KfcStrips(
                    height: 20,
                    width: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  KfcStrips(
                    height: 20,
                    width: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: AppColors.primarykfc,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  'Select Pickup Point',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    bool isSelected = index ==
                        selectedIndex; // Check if this tile is selected
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update selected index
                        });
                      },
                      child: Container(
                        color: isSelected
                            ? AppColors.primarykfc
                            : Colors.transparent, // Change color if selected
                        child: ListTile(
                          title: Text(
                              '${place['place']} - ${place['subplace']}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${place['openTime']} - ${place['closeTime']}',
                                style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : AppColors.primarykfc,
                                    fontWeight: FontWeight
                                        .bold), // Red color for timings
                              ),
                              Text(
                                'Distance: ${place['distance']}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Divider(color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        color: AppColors.greybutton,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                      onPressed: () {
                        final selectedPlace = places[selectedIndex!]['place'];
                        print(selectedPlace);
                        context
                            .read<PickupBloc>()
                            .add(SelectPickupPoint(selectedPlace));
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: Text("START YOUR ORDER",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
