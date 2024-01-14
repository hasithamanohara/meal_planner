import 'package:flutter/material.dart';

class XploreCommunityCard extends StatefulWidget {
  const XploreCommunityCard({super.key, required this.CommunityData});

  final List<Map<String, dynamic>> CommunityData;

  @override
  State<XploreCommunityCard> createState() => _XploreCommunityCardState();
}

class _XploreCommunityCardState extends State<XploreCommunityCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.CommunityData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 1, left: 1, bottom: 2),
          child: Container(
            width: 145,
            child: Card(
                child: Container(
                  color: const Color.fromARGB(255, 157, 157, 157),
              child: Stack(children: [
                Container(
                  width: 145,
                  height: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/${widget.CommunityData[index]['image']}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: const Alignment(0.8, -0.8),
                  child: const Icon(
                    Icons.add_circle_outline,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),

                //three rounds for profile  meca builder ekakin hadaann passe
                Align(
                  alignment: const Alignment(-0.4, 0.7),
                  child: Container(
                    height: 30,
                    width: 100,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        //round 1
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 1),
                              color: Colors.amber),
                        ),
                        Positioned(
                          left: 15,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 1),
                                color: Colors.red),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 1),
                                color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment(0.1,1 ),
                  child: Text(
                    widget.CommunityData[index]['name'],
                    style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                )
              ]),
            )),
          ),
        );
      },
    );
  }
}
