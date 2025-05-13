import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfcapp/bloc/pickup/pickup_bloc.dart';
import 'package:kfcapp/bloc/priceAndCountUpdate/price_and_count_update_bloc.dart';
import 'package:kfcapp/ui/screens/homescreen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PickupBloc(),
        ),
        BlocProvider(
          create: (context) => PriceAndCountUpdateBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Homescreen(),
      ),
    );
  }
}
