import 'package:core_test/screens/thirdscreen.dart';
import 'package:flutter/material.dart';

class Seventhscr extends StatefulWidget {
  const Seventhscr({super.key});

  @override
  State<Seventhscr> createState() => _SeventhscrState();
}

class _SeventhscrState extends State<Seventhscr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text('Well Done!',style: TextStyle(fontSize: 20,color: Colors.black),),
            const SizedBox(
              height: 10,
            ),
            const Text('You have mastered the Topic MCQ on Shapes and Space.',style: TextStyle(fontSize: 20,color: Colors.black),),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const Thirdscr() )));
                }),
                child: const Text('Start practice another topic',style: TextStyle(fontSize: 20,),)),
            const SizedBox(
              height: 10,
            ),
            // InkWell(
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //     child:
             const Text('Close'),
          ],
        ),
      ),
    );
  }
}
