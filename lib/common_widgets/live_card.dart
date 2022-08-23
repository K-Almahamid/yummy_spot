// import 'package:flutter/material.dart';
// import 'package:yummy_spot/constants/app_colors.dart';
// import 'package:yummy_spot/constants/app_styles.dart';
// import 'package:yummy_spot/constants/dimensions.dart';
//
// class LiveCardWidget extends StatefulWidget {
//   const LiveCardWidget({Key? key}) : super(key: key);
//
//   @override
//   State<LiveCardWidget> createState() => _LiveCardWidgetState();
// }
//
// class _LiveCardWidgetState extends State<LiveCardWidget> {
//   PageController pageController = PageController(viewportFraction: 0.85);
//   var _currentPageValue = 0.0;
//   final double _scaleFactor = 0.8;
//   final double _height = Dimensions.pageViewContainer;
//
//   @override
//   void initState() {
//     super.initState();
//     pageController.addListener(() {
//       setState(() {
//         _currentPageValue = pageController.page!;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     pageController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: PageView.builder(
//             controller: pageController,
//             itemCount: 10,
//             itemBuilder: (context, position) {
//               return _buildPageItem(position);
//             },
//           ),
//         ),
//       ],
//     );
//   }
//   //
//   // Widget _buildPageItem(int index) {
//   //   Matrix4 matrix = Matrix4.identity();
//   //   if (index == _currentPageValue.floor()) {
//   //     // to current slide
//   //     var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
//   //     var currTrans = _height * (1 - currScale) / 2;
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1);
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
//   //       ..setTranslationRaw(0, currTrans, 0);
//   //   } else if (index == _currentPageValue.floor() + 1) {
//   //     //to next slide
//   //     var currScale =
//   //         _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
//   //     var currTrans = _height * (1 - currScale) / 2;
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1);
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
//   //       ..setTranslationRaw(0, currTrans, 0);
//   //   } else if (index == _currentPageValue.floor() - 1) {
//   //     //to previse slide
//   //     var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
//   //     var currTrans = _height * (1 - currScale) / 2;
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1);
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
//   //       ..setTranslationRaw(0, currTrans, 0);
//   //   } else {
//   //     var currScale = 0.8;
//   //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
//   //       ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
//   //   }
//   //
//   //   return Transform(
//   //     transform: matrix,
//   //     child: Stack(
//   //       clipBehavior: Clip.none,
//   //       children: [
//   //         Container(
//   //           height: Dimensions.pageViewContainer,
//   //           margin: EdgeInsets.only(
//   //               left: Dimensions.width10, right: Dimensions.width10),
//   //           decoration: BoxDecoration(
//   //             borderRadius: BorderRadius.circular(Dimensions.radius30),
//   //             color: index.isEven
//   //                 ? const Color(0xFF69c5df)
//   //                 : const Color(0xFF9294cc),
//   //             image: const DecorationImage(
//   //               fit: BoxFit.cover,
//   //               image: AssetImage('assets/images/live.jpg'),
//   //             ),
//   //           ),
//   //         ),
//   //         Positioned(
//   //           right: 120,
//   //           top: 100,
//   //           child: Row(
//   //             children: [
//   //               Container(
//   //                 width: 45,
//   //                 height: 45,
//   //                 decoration: const BoxDecoration(
//   //                     shape: BoxShape.circle,
//   //                     image: DecorationImage(
//   //                         image: AssetImage('assets/images/profile.jpg'))),
//   //               ),
//   //               const SizedBox(width: 10),
//   //               Text(
//   //                 'First Live',
//   //                 style:
//   //                     getRegularStyle(color: AppColors.offBlack, fontSize: 20),
//   //               ),
//   //             ],
//   //           ),
//   //         )
//   //       ],
//   //     ),
//   //   );
//   // }
// }
