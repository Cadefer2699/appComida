import 'package:appcomida/widgets/single_option.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final List<String> options;
  const Options({
    required this.options,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      height: 38,
      child: ListView.builder(
          physics: BouncingScrollPhysics(), //permite que no sea muy estatico
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (context, index){
            if(index == 1){
              return SingleOption(
                  text: options[index],
                selected: true,
              );
            }
            return SingleOption(
                text: options[index]
            );

          }
      ),
    );
  }
}
