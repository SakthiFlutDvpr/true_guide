import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:true_guide/data/models/model_data.dart';
import 'package:true_guide/presentation/widgets/reusable%20widgets/categories_list_card.dart';
import 'package:true_guide/routes/app_routes.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: ListView.separated(
        shrinkWrap: true,

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(AppRoutes.categoryScreen);
            },
            child: CategoriesListCard(
              imgUrl: categories[index]['image'],
              title: categories[index]['title'],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemCount: categories.length,
      ),
    );
  }
}
