// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:oemor/components/custom_image_handler.dart';
// import 'package:oemor/core/constants/app_images_path.dart';
// import 'package:oemor/core/localization/app_strings.dart';

// class CustomSearch extends StatelessWidget {
//   TextEditingController? controller;
//   Function? onEditingComplete;
//   void Function(String)? onChanged;
//   // Function()? onEditingComplete;
//   CustomSearch({
//     super.key,
//     this.controller,
//     this.onEditingComplete,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       onFieldSubmitted: (value) {
//         if (onEditingComplete != null) {
//           onEditingComplete!();
//         }
//       },
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         hintText: AppStrings.search.tr,
//         contentPadding: EdgeInsets.symmetric(vertical: 4.h),
//         fillColor: const Color(0xffE8E8E8).withOpacity(.5),
//         hintStyle: TextStyle(
//           color: Colors.grey,
//           fontSize: 14.sp,
//         ),
//         filled: true,
//         prefixIcon: Padding(
//           padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
//           child: IconButton(
//             icon: CustomImageHandler(
//               AppImages.search,
//               width: 20.w,
//               height: 20.h,
//             ),
//             onPressed: () => onEditingComplete!(),
//           ),
//         ),
//         prefixIconConstraints: BoxConstraints(maxWidth: 50.w),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(9.r),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }
