import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_sebha/core/colors.dart';
import 'package:simple_sebha/providers/color_provider.dart';
import 'package:simple_sebha/views/home/widgets/home_view_body.dart';

class HomView extends StatelessWidget {
  const HomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: ,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {
            Provider.of<ColorProvider>(context, listen: false)
                .toggleColorPelete();
          },
          icon: const Icon(
            Icons.palette_rounded,
          ),
        ),
      ),
      body: HomeViewBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {},
          child: Icon(
            Icons.refresh_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
