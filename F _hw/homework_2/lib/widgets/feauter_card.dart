import 'package:flutter/material.dart';

class Featurecard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
     const FeatureItem(
      
              icon: Icons.flash_on,
              title: "Fast Performance",
              subtitle: "Lightning fast app performance",
              color: Color(0xff765F91),
            ),
            const FeatureItem(

              icon: Icons.security,
              title: "Secure",
              subtitle: "Your data is safe with us",
              color: Color(0xff2E8EE1),
            ),
            const FeatureItem(
             
              icon: Icons.palette,
              title: "Beautiful UI",
              subtitle: "Modern and clean design",
               color: Color(0xffE6A12F),
            ),

      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const FeatureItem({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white ,
      
      margin: const EdgeInsets.only(bottom: 9),
     
      child: ListTile( 
        visualDensity: const VisualDensity(vertical: -4),
        dense: true,
        leading: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: color.withOpacity(0.1 ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(
      icon,
      size: 20,
      color: color,
    ),
  ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
        subtitle: Text(subtitle,style: const TextStyle(fontSize: 10,color: Color(0xffBFBFBF))),
        trailing: const Icon(Icons.arrow_forward_ios, size: 13,color: Color(0xffBFBFBF)),
      ),
    );
  }
}
