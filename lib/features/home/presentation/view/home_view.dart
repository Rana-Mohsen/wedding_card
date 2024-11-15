import 'package:flutter/material.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/home_drawer.dart';
import 'package:wedding_card/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const HomeDrawer(),
      body: const HomeViewBody(),
    );
  }
}
