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
          NavItem(
            index: 0,
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
            icon: AppIcons.iconNav01Home,
          ),
          NavItem(
            index: 1,
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
            icon: AppIcons.iconNav02User,
          ),
          NavItem(
            index: 2,
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
            icon: AppIcons.iconNav03Wallet,
          ),
          NavItem(
            index: 3,
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
            icon: AppIcons.iconNav04Bucket,
          ),
          NavItem(
            index: 4,
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
            icon: AppIcons.iconNav05Message,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final Function(int) onTap;
  final String icon;

  const NavItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedIndex == index
              ? Colors.black.withOpacity(0.7)
              : Colors.transparent,
          border: Border.all(
            color: selectedIndex == index ? Colors.brown : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: SizedBox(
          height: 40,
          width: 40,
          child: Image.asset(icon),
        ),
      ),
    );
  }
}
