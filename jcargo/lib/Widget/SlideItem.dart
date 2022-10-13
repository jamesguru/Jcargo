import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:jcargo/Model/slide.dart';

class SliderItem extends StatelessWidget {
  final int index;

  const SliderItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          slideList[index].imageUrl,
          height: 200,
          width: 200,
        ),
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
