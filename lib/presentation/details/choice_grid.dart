import 'package:flutter/material.dart';

class MilkGrid extends StatelessWidget {
  final List<List<dynamic>> milkData = [
    ['Skim Milk', false],
    ['Full cream milk', false],
    ['Soy Milk', false],
    ['Almond Milk', false],
    ['Oat Milk', false],
    ['Lactose Free Milk', false],
    ['Butter Milk', false],
    ['Butter', false], // Last cell is empty
  ];

  MilkGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Milk Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: milkData.length,
          itemBuilder: (context, index) {
            final item = milkData[index];
            return item[0] == ''
                ? Container() // Empty container for the last cell
                : ListTile(
                    title: Text(item[0]),
                    trailing: Switch(
                      value: item[1],
                      onChanged: (bool value) {
                        // Handle switch state change
                      },
                    ),
                  );
          },
        ),
      ),
    );
  }
}
