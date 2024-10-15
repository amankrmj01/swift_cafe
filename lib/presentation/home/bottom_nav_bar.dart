import 'dart:ui';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 70,
          decoration: ShapeDecoration(
            color: Colors.black.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
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
        ),
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
