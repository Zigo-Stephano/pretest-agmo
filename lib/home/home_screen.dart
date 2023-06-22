import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/event.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF96BFED),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color(0xFFF9A952),
              title: const Text(
                "Activities & Event",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              centerTitle: false,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      controller.setDataEventFilter(value);
                    },
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: "Input Title Event"),
                  ),
                  const SizedBox(height: 14),
                  Obx(
                    () => ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => itemEvent(
                        controller.eventFilter[index],
                        index,
                      ),
                      itemCount: controller.eventFilter.length,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }

  Widget itemEvent(Event data, int index) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amber,
                ),
                child: Center(
                  child: Text(
                    "Icon ${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFFB77AFD),
                      ),
                      child: const Text(
                        "In-reach Programme",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      data.date.toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      data.title.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            data.location.toString(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            data.slot.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
