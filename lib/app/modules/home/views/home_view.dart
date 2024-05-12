import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('live stream tester '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  customCard(
                    onTap: () => Get.toNamed(Routes.MEDIA_KIT_VIEW),
                    text: 'media kit veiw',
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(width: 100),
                  customCard(
                    onTap: () => Get.toNamed(Routes.WEB_VIEW),
                    text: 'web view',
                    color: Colors.teal,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCard({text, color, onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 300,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: color,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
