import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 120,
              color: const Color(0xffE4F2FD),
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Container(width: 30, height: 20, color: Color(0xffE0E0E0)),

                SizedBox(width: 10),

                Expanded(
                  child: Container(height: 20, color: Color(0xffE0E0E0)),
                ),
                 SizedBox(width: 10),
               
              ],
            ),
             Divider(color: Colors.grey,thickness: 0.5,),

            SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(height: 35, color: const Color(0xffA5D6A7),),

                      SizedBox(height: 8),

                       Container(height: 35, color: const Color(0xffA5D6A7),),
                    ],
                  ),
                ),

                SizedBox(width: 10),
                Expanded(child: Container(height: 80, color: Color(0xFFFFCC80))),

                SizedBox(width: 10),

                Expanded(child: Container(height: 80, color: Color(0xFFFFCC80))),
              ],
            ),

            SizedBox(height: 10),

            Container(
              color: const Color(0xffF4E4F6),
              child: Row(
                children: [
                 
                  Expanded(
                    child: Container(
                      height: 80,
                      color: const Color.fromARGB(255, 212, 172, 219),
                    ),
                  ),

                  const SizedBox(width: 10),

                  
                  Expanded(
                    child: Container(
                      color: const Color(0xffE1BCE6),
                      child: Column(
                        children: [
                          Container(height: 35, color: const Color(0xffCF93D9)),
                          const SizedBox(height: 10),
                          Container(height: 35, color: const Color(0xffCF93D9)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  
                  Expanded(
                    child: Container(
                      height: 80,
                      color: const Color(0xffE1BEE8),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(child: Container()),
                ],
              ),
            ),
               SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    width: 150,
                    color: Color(0xffB2DFDC),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Container(height: 50, width: 200, color: Color(0xff80CBC4)),
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(height: 40, color: Color(0xffE0E0E0)),

            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
