import 'package:core_test/screens/fourthscreen.dart';
import 'package:flutter/material.dart';

class Thirdscr extends StatefulWidget {
  const Thirdscr({super.key});

  @override
  State<Thirdscr> createState() => _ThirdscrState();
}

class _ThirdscrState extends State<Thirdscr> {
  int _selectedTabbar = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Math',
                style: TextStyle(color: Colors.black),
              ),
              bottom: const TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorColor: Colors.green,
                tabs: [
                  Tab(
                    text: 'videos',
                  ),
                  Tab(
                    text: 'Practice',
                  ),
                  Tab(
                    text: 'Notes',
                  ),
                  Tab(
                    text: 'Books',
                  )
                ],
              ),
            ),
            body: TabBarView(children: [
              const Text(
                'Comming soon',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                ),
              ),
              ListView.separated(
                  separatorBuilder: ((context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  }),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  //  controller: scrollControl,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return practiceQuestion(index);
                    // Column(
                    //   children: [
                    //     InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: ((context) =>
                    //                       const Fourthscr())));
                    //         },
                    //         child: const Text('Knowing our numbers 1',
                    //             style: TextStyle(color: Colors.green))),
                    //   ],
                    // );
                  }),
              const Text(
                'Comming Late',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                ),
              ),
              const Text(
                'Comming Late',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                ),
              ),
            ])
            // //

            ));
  }

  Widget practiceQuestion(index) {
    int indexValue = index + 1;
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const Fourthscr())));
        },
        child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  indexValue.toString() + ".",
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
             const   SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Knowing our Numbers 1',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '0 Attempt Mastery 0%',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ],
            )));
  }

  // Center(
  //   child: ElevatedButton(
  //     child: const Text('ontab'),
  //     onPressed: () {
  //       // Navigator.push(context, MaterialPageRoute(builder: ((context) => const Seventhscr() )));
  //       showModalBottomSheet(
  //           context: context,
  //           builder: (BuildContext context) {
  //             return Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //               height: 350,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(10),
  //                 child: Center(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       const SizedBox(height: 50),
  //                       Container(
  //                         height: 50,
  //                         width: 60,
  //                         decoration: BoxDecoration(
  //                             borderRadius:
  //                                 BorderRadius.circular(10),
  //                             color: Colors.orange),
  //                         child: const Icon(
  //                           Icons.report_gmailerrorred,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                       const SizedBox(
  //                         height: 10,
  //                       ),
  //                       const Text(
  //                         'Oops!',
  //                         style: TextStyle(
  //                             color: Colors.black, fontSize: 20),
  //                       ),
  //                       const SizedBox(
  //                         height: 20,
  //                       ),
  //                       const Text(
  //                         'You answered incorrect multiple times!',
  //                         style: TextStyle(
  //                             color: Colors.black, fontSize: 15),
  //                       ),
  //                       const SizedBox(
  //                         height: 20,
  //                       ),
  //                       const Text(
  //                         'please watch videos to help you perform better and \n                            came back again',
  //                         style: TextStyle(
  //                             color: Colors.black, fontSize: 15),
  //                       ),
  //                       const SizedBox(
  //                         height: 20,
  //                       ),
  //                       ElevatedButton(
  //                           onPressed: () {
  //                             Navigator.pop(context);
  //                           },
  //                           child: const Text('Okay, got it'))
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             );
  //           });

  //     },
  //   ),
  // )
}
