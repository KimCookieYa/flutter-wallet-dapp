import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name1;
  final String name2;
  final IconData icon;
  final bool isInverted;

  const MyCard({
    super.key,
    required this.name1,
    required this.name2,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name1,
                  style: TextStyle(
                    color: isInverted ? Colors.white : Colors.black,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '6,428',
                      style: TextStyle(
                        color: isInverted ? Colors.white : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      name2,
                      style: TextStyle(
                        color: isInverted
                            ? Colors.white.withOpacity(0.8)
                            : Colors.black.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  icon,
                  size: 88,
                  color: isInverted ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
