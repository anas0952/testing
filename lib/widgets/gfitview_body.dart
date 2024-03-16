import 'package:flutter/material.dart';
import 'package:projecttest/constant.dart';
import 'package:projecttest/widgets/custom_going_comeback_circle.dart';
import 'package:projecttest/widgets/custom_list_images_gift.dart';

class GiftsViewBody extends StatefulWidget {
  const GiftsViewBody({super.key});
  @override
  State<GiftsViewBody> createState() => _GiftsViewBodyState();
}

List images = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/1.png',
  'assets/images/1.png',
];

class _GiftsViewBodyState extends State<GiftsViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Event Gifts',
            style: TextStyle(
              fontSize: 26,
              color: kprimaryColor,
            ),
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Be the best gift_giver within your Circle',
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  CustomGoingAndComeBackCircle(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icons.arrow_back),
                  const SizedBox(
                    width: 5.0,
                  ),
                  CustomGoingAndComeBackCircle(
                      iconColor: Colors.white,
                      color: kprimaryColor,
                      onPressed: () {},
                      icon: Icons.arrow_forward_rounded),
                ],
              )
            ],
          ),
          Container(
            height: 320,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const ListImageViewsGeft(),
          ),
        ],
      ),
    );
  }
}
