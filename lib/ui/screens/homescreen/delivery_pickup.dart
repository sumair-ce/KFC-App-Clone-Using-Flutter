import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfcapp/bloc/pickup/pickup_bloc.dart';
import 'package:kfcapp/ui/screens/homescreen/pickup_dialog_box.dart';

class DeliveryPickup extends StatefulWidget {
  @override
  State<DeliveryPickup> createState() => _DeliveryPickupState();
}

class _DeliveryPickupState extends State<DeliveryPickup> {
  bool selectedOption = true; // true for Delivery, false for Pickup

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Delivery Button
        Expanded(
          child: Container(
            height: 35,
            width: MediaQuery.of(context).size.width / 2.5,
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  selectedOption = true; // Selecting Delivery
                });
              },
              child: Text(
                'Delivery',
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                side: BorderSide(
                  width: selectedOption == true ? 1.5 : 1,
                  color: selectedOption == true
                      ? Colors.red
                      : Color(0xff333333).withOpacity(0.5),
                ),
                backgroundColor: Color(0xff333333).withOpacity(0.5),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        // Pickup Button
        BlocBuilder<PickupBloc, PickupState>(
          builder: (context, state) {
            return Expanded(
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width / 2.5,
                child: OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierColor:
                          Colors.white.withOpacity(0.1), // Whitish background
                      builder: (BuildContext context) {
                        return PickupDialogBox(); // Your dialog content
                      },
                    );
                    setState(() {
                      selectedOption = false;
                    });
                  },
                  child: Text(
                    'Pickup',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: BorderSide(
                      width: selectedOption == false ? 1.5 : 1,
                      color: selectedOption == false
                          ? Colors.red
                          : Color(0xff333333).withOpacity(0.5),
                    ),
                    backgroundColor: Color(0xff333333).withOpacity(0.5),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
