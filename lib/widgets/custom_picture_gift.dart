import 'package:flutter/material.dart';

class CustomPictureGift extends StatelessWidget {
  const CustomPictureGift({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: Column(
              children: [
                Image.asset(
                  image,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'test',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
