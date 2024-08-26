

// import 'package:flutter/material.dart';


// class CategoryItem extends StatelessWidget {
//   const CategoryItem(
//       {super.key,  this.isSelected = false});
//   // final CategoryModel category;
//   final bool isSelected;

//   @override
//   Widget build(BuildContext context) {
//     return isSelected == false
//         ? Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 34,
//                 backgroundColor: Colors.black.withOpacity(0.024),
//                 child: Image.asset(
//                   category.image,
//                   width: 38,
//                 ),
//               ),
//               Text(
//                 category.title,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 13,
//                 ),
//               )
//             ],
//           )
//         : Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 34,
//                 backgroundColor: kPrimaryColor.withOpacity(0.45),
//                 child: Image.asset(
//                   category.image,
//                   width: 38,
//                 ),
//               ),
//               Text(
//                 category.title,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 13,
//                 ),
//               )
//             ],
//           );
//   }
// }