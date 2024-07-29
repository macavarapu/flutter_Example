

// import 'package:flutter/material.dart';

// import 'list_item_model.dart';

// //
// class _MultiSelectItemPageState extends State<MultiSelectItemPage> {
//   List<Map> MyData = CustomData.mydata;
//   bool isSelectItem = false;
//   Map<int, bool> selectedItem = {};
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
 
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemBuilder: (builder, index) {
//           Map data = MyData[index];
//           selectedItem?[index] = selectedItem?[index] ?? false;
//           bool? isSelectedData = selectedItem[index];
 
//           return ListTile(
//             onLongPress: () {
//               setState(() {
//                 selectedItem[index] = !isSelectedData;
//                 isSelectItem = selectedItem.containsValue(true);
//               });
//             },
//             onTap: () {
//               if (isSelectItem) {
//                 setState(() {
//                   selectedItem[index] = !isSelectedData;
//                   isSelectItem = selectedItem.containsValue(true);
//                 });
//               } else {
//                 // Open Detail Page
//               }
//             },
//             title: Row(
//               children: [
//                 Text("Name :  "),
//                 Text("${data['name']}"),
//               ],
//             ),
//             subtitle: Container(
//               child: Wrap(
//                 children: [
//                   Text("Email    :   "),
//                   Text("${data['email']}"),
//                 ],
//               ),
//             ),
//             trailing: Text("${data['address']}"),
//             leading: _mainUI(isSelectedData!, data),
//           );
//         },
//         itemCount: MyData.length,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           selectAllAtOnceGo();
//         },
 
//         tooltip: 'Increment',
//         child: const Icon(Icons.check),
//       ),
//     );
//   }
 
//   Widget _mainUI(bool isSelected, Map ourdata) {
//     if (isSelectItem) {
//       return Icon(
//         isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//         color: Theme.of(context).primaryColor,
//       );
//     } else {
//       return CircleAvatar(
//         child: Text('${ourdata['id']}'),
//       );
//     }
//   }
//     selectAllAtOnceGo() {
//     bool isFalseAvailable = selectedItem.containsValue(false);
//     selectedItem.updateAll((key, value) => isFalseAvailable);
//     setState(() {
//       isSelectItem = selectedItem.containsValue(true);
//     });
//   }
// }