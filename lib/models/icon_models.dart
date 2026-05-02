import 'package:coffee_shop/pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

final menu = [
  {
    'icon': Iconsax.home5,
    'destination': const HomeScreen(),
  },
  {
    'icon': Iconsax.heart ,
    'destination': const Center(child: Text('Favorite')),
  },
  {
    'icon': Iconsax.shopping_bag,
    'destination': const Center(child: Text('Shopping')),
  },
  {
    'icon':Iconsax.notification,
    'destination': const Center(child: Text('Notification')),
  },
];