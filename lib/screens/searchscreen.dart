import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samsungfoodapp/constant/sampledataset.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> _selectedIngredients = [];

  final List<String> _searchHistory = [];
  final TextEditingController _searchController = TextEditingController();

  void _addSearchItem(String searchItem) {
    setState(() {
      _searchHistory.insert(0, searchItem);
      if (_searchHistory.length > 5) {
        _searchHistory.removeLast();
      }
    });
  }

  void _showSelectedIngredients() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: _selectedIngredients.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_selectedIngredients[index]),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 4,
        title: Padding(
          padding: const EdgeInsets.only(top: 11.0),
          child: SizedBox(
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 45,
                  width: 280,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 1.4),
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        Align(
                          alignment: const Alignment(2, 2),
                          child: Container(
                            width: 225,
                            height: 30,
                            color: Colors.transparent,
                            child: TextField(
                              controller: _searchController,
                              decoration: const InputDecoration(
                                hintText: 'Search Samsung Food',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              onSubmitted: _addSearchItem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "Cancel",
                  style: TextStyle(fontSize: 23, color: Colors.orange),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //ingredient search
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 160,
                width: double.infinity,
                color: const Color.fromARGB(255, 243, 241, 241),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(top: 6, left: 10),
                      child: Text(
                        'Search by ingredients ${_selectedIngredients.length}',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //horizontal bar
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: FOOD_DATA.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool isSelected = _selectedIngredients.contains(FOOD_DATA[index]['name']);
                          return Padding(
                            padding: const EdgeInsets.all(0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (isSelected) {
                                    _selectedIngredients.remove(FOOD_DATA[index]['name']);
                                  }else {
                                    _selectedIngredients.add(FOOD_DATA[index]['name']);
                                     _showSelectedIngredients();
                                  }
                                });
                                //method for on tap navigate to relevet screeen
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: isSelected? Border.all(color: Colors.orange , width: 3.0) : null,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Row(
                                    children: [
                                      //image
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          height: 40,
                                          width: 38,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/images/${FOOD_DATA[index]['image']}',
                                                  ),
                                                  fit: BoxFit.fill),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.black),
                                        ),
                                      ),
                                      //text
                                      const SizedBox(
                                        width: 5,
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(FOOD_DATA[index]['name'],
                                            style: TextStyle(
                                              fontSize: 20
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    //add ingredient
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        child: const Text(
                          '+ Add ingredients',
                          style: TextStyle(fontSize: 24, color: Colors.orange),
                        ),
                        onTap: () {
                          //function for ontap navigation
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //popular search
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: double.infinity,
                height: 260,
                // color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Popular searches',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 83, 77, 77),
                      ),
                    ),
                    Container(
                      height: 230,
                      color: Colors.red,
                      child: ListView.builder(
                        itemCount: _searchHistory.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(_searchHistory[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //recent search history
            if (_searchHistory.isNotEmpty)
              SizedBox(
                width: double.infinity,
                height: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent searches',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 83, 77, 77),
                      ),
                    ),
                    Container(
                      height: 230,
                      color: Colors.red,
                      child: ListView.builder(
                        itemCount: _searchHistory.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(_searchHistory[index]),
                            trailing: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  _searchHistory.removeAt(index);
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
