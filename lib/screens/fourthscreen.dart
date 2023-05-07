import 'package:core_test/screens/fifthscreen.dart';
import 'package:core_test/screens/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Fourthscr extends StatefulWidget {
  const Fourthscr({super.key});

  @override
  State<Fourthscr> createState() => _FourthscrState();
}

class _FourthscrState extends State<Fourthscr> {
  List questions = [
    {
      "ques": "Value of 1 + 1 = ?",
      "options": ["1", "2", "3", "0"],
      "ans": "2"
    },
    {
      "ques": "Value of 1 + 2 = ?",
      "options": ["1", "2", "3", "0"],
      "ans": "3"
    },
    {
      "ques": "Value of 1 + 10 = ?",
      "options": ["11", "12", "13", "10"],
      "ans": "11"
    },
    {
      "ques": "Value of 13 + 1 = ?",
      "options": ["12", "22", "13", "14"],
      "ans": "14"
    },
    {
      "ques": "Value of 1 + 9 = ?",
      "options": ["9", "20", "10", "01"],
      "ans": "10"
    },
    {
      "ques": "Value of 11 + 1 = ?",
      "options": ["12", "22", "32", "42"],
      "ans": "12"
    },
    {
      "ques": "Value of 1000 + 100 = ?",
      "options": ["1001", "1000", "1100", "1200"],
      "ans": "1100"
    },
    {
      "ques": "Value of 950 + 150 = ?",
      "options": ["1000", "1100", "2000", "800"],
      "ans": "1100"
    },
    {
      "ques": "Value of 1 + 180 = ?",
      "options": ["181", "200", "170", "180"],
      "ans": "181"
    },
    {
      "ques": "Value of 290 + 200 = ?",
      "options": ["500", "490", "390", "290"],
      "ans": "490"
    },
  ];
  bool ans = false;
  int currentIndex = 0;
  int correctAns = 0;
  int falsesCount = 0;
  int answered = 1;
  double progress = 0.0;
  String selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Knowing Our Numbers 1',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Mastery ${(currentIndex * 10)}%',
                style: const TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(value: progress),
              const SizedBox(
                height: 20,
              ),
              questionWidget(questions[currentIndex], currentIndex),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    setState(() {
                      if (ans == true) {
                        if (selectedValue == questions[currentIndex]['ans']) {
                          correctAns += 1;
                        } else {
                          falsesCount += 1;
                        }

                        if (falsesCount > 2) {
                          int attempt = prefs.getInt("attempt") ?? 0;
                          attempt += 1;
                          int percentage = currentIndex * 10;
                          prefs.setInt("attempt", attempt);
                          prefs.setInt("percentage", percentage);
                          if (falsesCount > 2) {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 350,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(height: 50),
                                            Container(
                                              height: 50,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.orange),
                                              child: const Icon(
                                                Icons.report_gmailerrorred,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              'Oops!',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              'You answered incorrect multiple times!',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              'please watch videos to help you perform better and \n                            came back again',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: ((context) =>
                                                              const Thirdscr())));
                                                },
                                                child:
                                                    const Text('Okay, got it'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          }
                        }

                        if (currentIndex < 9) {
                          currentIndex += 1;
                        } else {
                          int attempt = prefs.getInt("attempt") ?? 0;
                          attempt += 1;
                          int percentage = correctAns * 10;
                          prefs.setInt("attempt", attempt);
                          prefs.setInt("percentage", percentage);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Seventhscr())));
                        }

                        progress = answered / 10;
                        answered += 1;
                        ans = false;
                        selectedValue = "";
                      }
                    });
                  },
                  child: const Text('Next Question')),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'Note :  You can not move next without answering.  If you select wrong ans three times, Screen will automatically close and move bacck.'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('Correct Ans : $correctAns'),
              const SizedBox(
                height: 15,
              ),
              Text('Wrong Ans : $falsesCount')
            ],
          )),
        ),
      ),
    );
  }

  Widget questionWidget(data, index) {
    return Column(
      children: [
        Text(data['ques']),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    ans = true;
                    selectedValue = data['options'][0];
                    setState(() {});
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: selectedValue == data['options'][0]
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'A',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  data['options'][0],
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      ans = true;
                      selectedValue = data['options'][1];
                      setState(() {});
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: selectedValue == data['options'][1]
                            ? Colors.blue
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'B',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  data['options'][1],
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      ans = true;
                      selectedValue = data['options'][2];
                      setState(() {});
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: selectedValue == data['options'][2]
                            ? Colors.blue
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'C',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  data['options'][2],
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      ans = true;
                      selectedValue = data['options'][3];
                      setState(() {});
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: selectedValue == data['options'][3]
                            ? Colors.blue
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'D',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  data['options'][3],
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
