import 'package:flutter/material.dart';
import 'package:hw_2/widgets/custom_button.dart';
import 'package:hw_2/widgets/feauter_card.dart';
import 'package:hw_2/widgets/state_card.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: Padding(
         padding: const EdgeInsets.all(16),
         child: Column(
          
          children: [
          
          Container(
            width: double.infinity,
             padding: const EdgeInsets.all(16),
         decoration: BoxDecoration(color: Color(0xff88160B9),borderRadius: BorderRadius.circular(16),
         boxShadow: [
          BoxShadow(color: Color(0xff88160B9), blurRadius: 1, // نعومة الشادو
        offset: Offset(0, 1), )
         ]
         
         
         
         
         ),
         
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello! 👋',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),),
              SizedBox(height: 6,),
              Text("Try your best to build this ui",style: TextStyle(fontSize: 11,color: Colors.white),),
                SizedBox(height: 15),

                  CustomButton(title: "Get Started",color: Color(0xff673BB7),),

            ],
          ),
          ),
           const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Quick Stats",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  

            ),
               const SizedBox(height: 5),

                   StatCard(),
                    const SizedBox(height: 5),
                    const Align(
              alignment: Alignment.centerLeft,
              child: Text("Features",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 5),
                   Featurecard(),
                   const SizedBox(height: 60),
                   Row(
              children: const [
                Expanded(
                  child: CustomButton(
                    title: "Settings",
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    title: "Profile",
                    color: Colors.orange,
                  ),
                ),
              ],
         ),
       
       

       ])));
  }
}