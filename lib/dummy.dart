import 'package:flutter/material.dart';

// Container(
//   margin: EdgeInsets.symmetric(vertical: 20.0),
//   decoration: BoxDecoration(
//     color: Color(0xD0D9D7D7),
//     borderRadius: BorderRadius.circular(10),
//   ),
//   child: Padding(
//     padding: EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 4.0),
//     child: Row(
//       children: [
//         GestureDetector(
//           onTap: () {},
//           child: Container(
//             child: Icon(Icons.location_pin),
//             margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
//           ),
//         ),
//         // Icon(Icons.search),
//         SizedBox(width: 10.0),
//         DropdownButton<String>(
//           value: valueChose,
//           onChanged: (String? newValue) {
//             setState(() {
//               valueChose = newValue!;
//             });
//           },
//           items: <String>[
//             'One',
//             'Two',
//             'Free',
//             'Four'
//           ].map<DropdownMenuItem<String>>(
//               (String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ],
//     ),
//   ),
// ),