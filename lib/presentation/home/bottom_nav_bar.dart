import 'package:flutter/material.dart';

import '../../consts/icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: ShapeDecoration(
        color: Color(0xD6333333),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => _onItemTapped(0),
            child: _selectedIndex == 0
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                        color: Colors.brown,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppIcons.iconNav01Home),
                    ),
                  )
                : Image.asset(AppIcons.iconNav01Home),
          ),
          GestureDetector(
            onTap: () => _onItemTapped(1),
            child: _selectedIndex == 1
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                        color: Colors.brown,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppIcons.iconNav02User),
                    ),
                  )
                : Image.asset(AppIcons.iconNav02User),
          ),
          GestureDetector(
            onTap: () => _onItemTapped(2),
            child: _selectedIndex == 2
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                        color: Colors.brown,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppIcons.iconNav03Wallet),
                    ),
                  )
                : Image.asset(AppIcons.iconNav03Wallet),
          ),
          GestureDetector(
            onTap: () => _onItemTapped(3),
            child: _selectedIndex == 3
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                        color: Colors.brown,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppIcons.iconNav04Bucket),
                    ),
                  )
                : Image.asset(AppIcons.iconNav04Bucket),
          ),
          GestureDetector(
            onTap: () => _onItemTapped(4),
            child: _selectedIndex == 4
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                        color: Colors.brown,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppIcons.iconNav05Message),
                    ),
                  )
                : Image.asset(AppIcons.iconNav05Message),
          ),
        ],
      ),
    );
  }
}
