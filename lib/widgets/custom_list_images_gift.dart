import 'package:flutter/material.dart';
import 'package:projecttest/constant.dart';
import 'package:projecttest/widgets/gfitview_body.dart';

class ListImageViewsGeft extends StatefulWidget {
  const ListImageViewsGeft({super.key});

  @override
  State<ListImageViewsGeft> createState() => _ListImageViewsGeftState();
}

class _ListImageViewsGeftState extends State<ListImageViewsGeft> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: scrollController,
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomImages(
            onPressed: () {
              if (index != 0) {
                scrollController.animateTo(
                  index * MediaQuery.of(context).size.width,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                );
              } else {
                scrollController.animateTo(
                  1 * MediaQuery.of(context).size.width * .5,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                );
              }
            },
            pathimage: images[index],
          );
        });
  }
}

class CustomImages extends StatefulWidget {
  const CustomImages({
    super.key,
    this.onPressed,
    required this.pathimage,
  });
  final void Function()? onPressed;
  final String pathimage;

  @override
  State<CustomImages> createState() => _CustomImagesState();
}

class _CustomImagesState extends State<CustomImages> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            Image.asset(widget.pathimage),
            Row(
              children: [
                const Text('test'),
                const Spacer(),
                IconButton(
                  onPressed: widget.onPressed,
                  icon: const Icon(
                    Icons.arrow_forward_sharp,
                    color: kprimaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
