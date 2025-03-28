import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.data,
    required this.isSingleText,
  });

  final List data;
  final bool isSingleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 80.w,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors().color817979),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: DropdownButton<dynamic>(
        padding: EdgeInsets.zero,
        isExpanded: false,
        value: data.first,
        underline: SizedBox(),
        onChanged: (newValue) {},
        items:
            data.map((e) {
              return DropdownMenuItem<dynamic>(
                value: e,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Row(
                    spacing: 2.w,
                    children: [
                      Visibility(
                        visible: !isSingleText,
                        child: Text(
                          isSingleText ? e : e["flag"]!,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Text(
                        isSingleText ? e.toString() : e["code"].toString(),
                        style:
                            isSingleText
                                ? TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                )
                                : TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                      ), // Code & Name
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
