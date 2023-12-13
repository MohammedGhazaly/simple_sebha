import 'package:flutter/material.dart';
import 'package:simple_sebha/views/home/widgets/sebha_count_container.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "الهدف",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 28,
              ),
            ),
            Text(
              "33",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
        const Align(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SebhaCountContainer(count: 10000),
                SebhaCountContainer(count: 1000),
                SebhaCountContainer(count: 100),
                SebhaCountContainer(count: 33),
              ],
            ),
          ),
        )
      ],
    );
  }
}
