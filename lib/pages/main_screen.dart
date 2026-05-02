import 'package:coffee_shop/colors.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/models/icon_models.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int indexMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[indexMenu]['destination'] as Widget,
      backgroundColor: backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List.generate(menu.length, (index) {
            Map items = menu[index];
            bool isActive = indexMenu == index;
            return Expanded(
              child: InkWell(
                onTap: (){
                   setState(() {
                     indexMenu = index ;
                   });
                },
                child: SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20,),
                      Icon(
                        items['icon'],
                        color: isActive ? primaryColor : secondaryColor,
                        size: 25,
                      ),
                      if(isActive) const SizedBox(height: 7,),
                      if (isActive)
                      Container(
                        height: 5,
                        width: 15,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      )
                    ],
                  ),
                ),
              ),
              );
          }),
        ),
      ),
    );
  }
}
