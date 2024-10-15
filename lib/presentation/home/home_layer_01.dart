import 'package:flutter/material.dart';

import '../../consts/images.dart';

class HomeLayer01 extends StatelessWidget {
  const HomeLayer01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundAuth01),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
