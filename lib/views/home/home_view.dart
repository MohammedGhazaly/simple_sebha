import 'package:flutter/material.dart';
import 'package:simple_sebha/views/home/widgets/home_view_body.dart';

class HomView extends StatelessWidget {
  const HomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: ,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.palette_rounded,
          ),
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
