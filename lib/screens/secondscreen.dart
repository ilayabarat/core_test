import 'package:core_test/screens/fourthscreen.dart';
import 'package:core_test/screens/thirdscreen.dart';
import 'package:flutter/material.dart';

class Secondscr extends StatefulWidget {
  const Secondscr({super.key});

  @override
  State<Secondscr> createState() => _SecondscrState();
}

class _SecondscrState extends State<Secondscr> {
  List subjects = [
    {
      "color": "#166B3F",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/subject_icon%2F%E0%A4%97%E0%A4%A3%E0%A4%BF%E0%A4%A4.png?alt=media&token=3eedd4f8-751c-4ed0-8940-5f2b210f09ed",
      "id": "math",
      "name": "Math",
      "short_name": "Math"
    },
    {
      "color": "#247BB3",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/subject_icon%2F%E0%A4%B5%E0%A4%BF%E0%A4%9C%E0%A5%8D%E0%A4%9E%E0%A4%BE%E0%A4%A8.png?alt=media&token=a7e41736-1e8b-4bcb-b5e1-f694719c9964",
      "id": "science",
      "name": "Science",
      "short_name": "Science"
    },
    {
      "color": "#C13633",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/subject_icon%2FEnglish%20Grammar.png?alt=media&token=f75d03d6-0a80-41e0-93dd-1e33d503cea3",
      "id": "english_literature",
      "name": "English Literature",
      "short_name": "Eng Lit"
    },
    {
      "color": "#E67736",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/subject_icon%2FEnglish%20Grammar.png?alt=media&token=f75d03d6-0a80-41e0-93dd-1e33d503cea3",
      "id": "english_grammar",
      "name": "English Grammar",
      "short_name": "Grammar"
    },
    {
      "color": "#98134D",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/subject_icon%2FEnglish%20Literature.png?alt=media&token=549a8388-1fb8-4801-9b4e-e1240bcae39e",
      "id": "hindi_literature",
      "name": "हिन्दी साहित्य",
      "short_name": "साहित्य"
    },
    {
      "color": "#534F9D",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/subject_icon%2Ficon_id%2Fcomputers.png?alt=media&token=5cc17a7b-63dd-43c2-a282-ad097b944e17",
      "id": "computers_and_communication_technology",
      "name": "Computers and Communication Technology",
      "short_name": "computers"
    },
    {
      "color": "#F98787",
      "icon":
          "https://firebasestorage.googleapis.com/v0/b/iprep-7f10a.appspot.com/o/Subject_icons%2FEarly%20Learning.png?alt=media&token=fa44c370-a79c-4d68-874c-fb3461fca589",
      "id": "early_age_learning",
      "name": "Early Age Learning",
      "short_name": "Early Age Lr"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.list,
          color: Colors.black,
        ),
        actions: [
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text('Your Subject',
                    style: TextStyle(color: Colors.black)),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 250,
                  child: GridView.builder(
                      itemCount: subjects.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 5.0,
                          crossAxisSpacing: 1.0,
                          mainAxisExtent: 125,
                          crossAxisCount: 4,
                          childAspectRatio: 1),
                      itemBuilder: (_, index) {
                        return subjectWidget(subjects[index]);
                      }),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           InkWell(
                //             onTap: () {
                //               Navigator.push(context, MaterialPageRoute(builder: ((context) => const Thirdscr())));
                //             },
                //             child: Column(
                //               children: [
                //                 Container(
                //                   height: 30,
                //                   width: 30,
                //                   decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(10),
                //                       color: Colors.green),
                //                   child: const Icon(
                //                     Icons.calculate_outlined,
                //                     color: Colors.white,
                //                   ),
                //                 ),
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 const Text(
                //                   'Math',
                //                   style: TextStyle(color: Colors.black),
                //                 )
                //               ],
                //             ),
                //           ),

                //            InkWell(
                //             onTap: () {
                //               Navigator.push(context, MaterialPageRoute(builder: ((context) => const Fourthscr())));
                //             },
                //         child:  Column(
                //             children: [
                //               Container(
                //                 height: 30,
                //                 width: 30,
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     color: Colors.blue.shade200),
                //                 child: const Icon(
                //                   Icons.science,
                //                   color: Colors.white,
                //                 ),
                //               ),
                //               const SizedBox(
                //                 height: 10,
                //               ),
                //               const Text(
                //                 'Science',
                //                 style: TextStyle(color: Colors.black),
                //               )
                //             ],
                //           ),),
                //           Column(
                //             children: [
                //               Container(
                //                 height: 30,
                //                 width: 30,
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     color: Colors.amber),
                //                 child: const Icon(
                //                   Icons.history,
                //                   color: Colors.yellowAccent,
                //                 ),
                //               ),
                //               const SizedBox(
                //                 height: 10,
                //               ),
                //               const Text(
                //                 'History',
                //                 style: TextStyle(color: Colors.black),
                //               )
                //             ],
                //           ),
                //           Column(
                //             children: [
                //               Container(
                //                 height: 30,
                //                 width: 30,
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     color: Colors.red.shade300),
                //                 child: const Icon(
                //                   Icons.house_outlined,
                //                   color: Colors.white,
                //                 ),
                //               ),
                //               const SizedBox(
                //                 height: 10,
                //               ),
                //               const Text(
                //                 'Civics',
                //                 style: TextStyle(color: Colors.black),
                //               )
                //             ],
                //           ),
                //         ],
                //       ),

                // const SizedBox(
                //   height: 15,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       children: [
                //         Container(
                //           height: 30,
                //           width: 30,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: Colors.yellow),
                //           child:
                //               Icon(Icons.flag, color: Colors.yellow.shade100),
                //         ),
                //         const SizedBox(
                //           height: 10,
                //         ),
                //         const Text(
                //           'Geo',
                //           style: TextStyle(color: Colors.black),
                //         )
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Container(
                //           height: 30,
                //           width: 30,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: Colors.orange.shade200),
                //           child: const Icon(
                //             Icons.menu_book_outlined,
                //             color: Colors.white,
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 10,
                //         ),
                //         const Text(
                //           'Eng Lit',
                //           style: TextStyle(color: Colors.black),
                //         )
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Container(
                //           height: 30,
                //           width: 30,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: Colors.orange.shade300),
                //           child: const Icon(
                //             Icons.menu_book_outlined,
                //             color: Colors.white,
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 10,
                //         ),
                //         const Text(
                //           'Grammar',
                //           style: TextStyle(color: Colors.black),
                //         )
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Container(
                //           height: 30,
                //           width: 30,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: Colors.grey.shade600),
                //           child: const Icon(
                //             Icons.computer_outlined,
                //             color: Colors.black38,
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 10,
                //         ),
                //         const Text(
                //           'Eng Lit',
                //           style: TextStyle(color: Colors.black),
                //         )
                //       ],
                //     ),
                //   ],
                // ),
                //   ],
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Books',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber),
                            child: const Icon(
                              Icons.history,
                              color: Colors.yellowAccent,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Arts and History',
                              ),
                              Text(
                                '21 Books',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade300),
                            child: const Icon(
                              Icons.light,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Inspirational',
                              ),
                              Text(
                                '53 Books',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade300),
                        child: const Icon(
                          Icons.science_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Science',
                          ),
                          Text(
                            '38 Books',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade200),
                        child: Icon(
                          Icons.energy_savings_leaf_rounded,
                          color: Colors.green.shade900,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Social and Environment',
                          ),
                          Text(
                            '82 Books',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Project and Practicals',
                  style: TextStyle(color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber),
                            child: const Icon(
                              Icons.history,
                              color: Colors.yellowAccent,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Arts and History',
                              ),
                              Text(
                                '21 Books',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade300),
                            child: const Icon(
                              Icons.light,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Inspirational',
                              ),
                              Text(
                                '53 Books',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget subjectWidget(data) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const Thirdscr())));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: data['color']
                ),
                child: Image.network(
                  data['icon'], // Icons.calculate_outlined,
                  // ,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                      width: 70,
                      child: Text(
                        data['name'],
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(color: Colors.black),
                      )))
            ],
          ),
        ));
  }
}
