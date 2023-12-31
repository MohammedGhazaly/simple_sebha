import 'package:flutter/material.dart';
import 'package:simple_sebha/views/home/widgets/home_bottom.dart';
import 'package:simple_sebha/views/home/widgets/home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: HomeHeader(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: HomeBottom(),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
