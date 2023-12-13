import 'package:flutter/material.dart';

class HomView extends StatelessWidget {
  const HomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: ,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.palette_rounded,
          ),
        ),
      ),
    );
  }
}
