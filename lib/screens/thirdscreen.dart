import 'package:core_test/screens/fourthscreen.dart';
import 'package:core_test/screens/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Thirdscr extends StatefulWidget {
  const Thirdscr({super.key});

  @override
  State<Thirdscr> createState() => _ThirdscrState();
}

class _ThirdscrState extends State<Thirdscr> {
  // int _selectedTabbar = 0;
  int attempt = 0;
  int percentage = 0;

  getLocalData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    attempt = prefs.getInt("attempt") ?? 0;
    percentage = prefs.getInt("percentage") ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    getLocalData();
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Secondscr())));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Classes',
                style: TextStyle(color: Colors.black),
              ),
              bottom: const TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorColor: Colors.green,
                tabs: [
                  Tab(
                    text: 'Practice',
                  ),
                  Tab(
                    text: 'video',
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
              ListView.separated(
                  separatorBuilder: ((context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  }),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return practiceQuestion(index);
                  }),
              const Text(
                'Comming soon',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                ),
              ),
              const Text(
                'Comming soon',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                ),
              ),
              const Text(
                'Comming soon',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                ),
              ),
            ])));
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
                  "$indexValue.",
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Addition Questions',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '$attempt Attempt Mastery $percentage%',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ],
            )));
  }
}
