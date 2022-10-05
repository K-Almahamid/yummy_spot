import 'package:flutter/material.dart';

class SliverHeaderData extends StatelessWidget {
  const SliverHeaderData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Jabanise'),
          const SizedBox(height: 8),
          Row(
            children: const [
              Icon(
                Icons.access_time,
                size: 14,
              ),
              SizedBox(width: 4),
              Text('30m'),
              SizedBox(width: 6),
              Icon(
                Icons.star,
                size: 14,
              ),
              SizedBox(width: 6),
              Text('50 fee'),
            ],
          )
        ],
      ),
    );
  }
}
