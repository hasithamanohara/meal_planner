import 'package:flutter/material.dart';

class XplorePopulaerCreatorCard extends StatefulWidget {
  const XplorePopulaerCreatorCard(
      {super.key, required this.PopularCreatorsData});

  final List<Map<String, dynamic>> PopularCreatorsData;

  @override
  State<XplorePopulaerCreatorCard> createState() =>
      _XplorePopulaerCreatorCardState();
}

class _XplorePopulaerCreatorCardState extends State<XplorePopulaerCreatorCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.PopularCreatorsData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 1, left: 1, bottom: 2),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.1),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            width: 145,
            child: Card(
                child: Container(
              color: Color.fromARGB(255, 215, 206, 206),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 115,
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${widget.PopularCreatorsData[index]['image']}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: const Alignment(0.95, -0.95),
                      child: const Icon(
                        Icons.add_circle_outline,
                        size: 35.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  Text(
                    widget.PopularCreatorsData[index]['name'],
                    style: const TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            )),
          ),
        );
      },
    );
  }
}
