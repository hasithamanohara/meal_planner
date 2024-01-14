import 'package:flutter/material.dart';

class TopCategoryBuilder extends StatefulWidget {
  const TopCategoryBuilder({super.key, required this.topcategoryData});

  final List<Map<String, dynamic>> topcategoryData;

  @override
  State<TopCategoryBuilder> createState() => _TopCategoryBuilderState();
}

class _TopCategoryBuilderState extends State<TopCategoryBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.topcategoryData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 1, left: 1, bottom: 2),
          child: Container(
            width: 145,
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/${widget.topcategoryData[index]['image']}'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: const Alignment(0, 0.8),
                child: Text(
                  widget.topcategoryData[index]['name'],
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
