import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List storiesname = [
    ['Likes', false],
    ['Tony', true],
    ['James', true],
    ['Jordan', true],
    ['Manali', false]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(252, 228, 236, 1),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.pink[50],
          leading: CircleAvatar(
            minRadius: 15,
            child: Image.asset('assets/screen1.png'),
          ),
          title: const Text(
            'Puzzels',
            style: TextStyle(color: Colors.pink, fontSize: 24),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: ImageIcon(
                AssetImage('assets/filter.png'),
                color: Color.fromARGB(255, 38, 37, 37),
                size: 50,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 130.0,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    viewportFraction: 0.3),
                items: [1, 2, 3, 4, 5].map((i) {
                  print('$i');
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                    width: 100,
                                    child: Image.asset(
                                      'assets/$i.png',
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Container(
                              width: 80,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${storiesname[i - 1][0]}',
                                  ),
                                  if (storiesname[i - 1][1] == true)
                                    const Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 20,
                                    )
                                ],
                              ),
                            )
                          ]);
                    },
                  );
                }).toList(),
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(top: 30),
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 1.75,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10000),
                                      child: Image.asset(
                                        'assets/1.png',
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                'Jordan',
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              const Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              )
                                            ],
                                          ),
                                          const Text('13:10')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Hii!'),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.pink),
                                            child: const Text(
                                              '1',
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10000),
                                      child: Image.asset(
                                        'assets/2.png',
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                'Tim',
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 20),
                                              ),
                                              const Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              )
                                            ],
                                          ),
                                          const Text('13:10',
                                              style: const TextStyle(
                                                  color: Colors.black54))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Hii!',
                                              style: TextStyle(
                                                  color: Colors.black54)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10000),
                                      child: Image.asset(
                                        'assets/3.png',
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                'James',
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              const Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              )
                                            ],
                                          ),
                                          const Text('13:10')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Typing...',
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontStyle: FontStyle.italic),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.pink),
                                            child: const Text(
                                              '+9',
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        )
                      ],
                    )),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 73, 72, 72),
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
              ),
            ],
          ),
          child: BottomNavigationBar(
            iconSize: 30,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: ImageIcon(
                  AssetImage('assets/homepage.png'),
                  size: 40,
                  color: Colors.black54,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: ImageIcon(
                  AssetImage('assets/global-search.png'),
                  size: 40,
                  color: Colors.black54,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/calendar.png'),
                    size: 40,
                    color: Colors.black54,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message_rounded,
                    size: 40,
                    color: Color.fromARGB(255, 234, 153, 180),
                  ),
                  label: ''),
            ],
          ),
        ));
  }
}
