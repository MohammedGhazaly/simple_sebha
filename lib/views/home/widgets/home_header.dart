import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_sebha/providers/sebha_provider.dart';
import 'package:simple_sebha/views/home/widgets/sebha_count_container.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SebhaProvider sebhaProvider = Provider.of<SebhaProvider>(context);
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
              onPressed: () {
                sebhaProvider.incrementGoal();
              },
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 28,
              ),
            ),
            Text(
              sebhaProvider.goal.toString(),
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                if (sebhaProvider.goal != sebhaProvider.roundTasbeh) {
                  sebhaProvider.decrementGoal();
                }
              },
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
        Align(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sebhaProvider.golas.map((goal) {
                  return InkWell(
                    onTap: () {
                      sebhaProvider.chooseFromSpecefiedGoals(goal);
                    },
                    child: SebhaCountContainer(
                      count: goal,
                    ),
                  );
                }).toList()),
          ),
        )
      ],
    );
  }
}
