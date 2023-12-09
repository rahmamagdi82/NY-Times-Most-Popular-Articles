import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/core/resources/color_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/font_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/style_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: AppSize.s35,
                backgroundImage: NetworkImage('https://static01.nyt.com/images/2023/11/30/well/30Well-Protein-Age/30Well-Protein-Age-thumbStandard.jpg'),
              ),
              const SizedBox(width: AppSize.s15,),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The Children',
                    maxLines: 2,overflow: TextOverflow.ellipsis,style: FontStyles.getSemiBoldStyle(fontSize: FontSize.s16),),
                    const SizedBox(height: AppSize.s10,),
                    Text('By Mona Ahmed',maxLines: 2,overflow: TextOverflow.ellipsis,style: FontStyles.getMediumStyle().copyWith(color: ColorManager.darkGray),),
                  ],
                ),
              ),
              const SizedBox(width: AppSize.s20,),
              Icon(Icons.arrow_forward_ios,color: ColorManager.darkGray,size: AppSize.s30,)
            ],
          ),
          const SizedBox(height: AppSize.s10,),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_today,color: ColorManager.darkGray,),
                Text('2022-8-6',style: FontStyles.getMediumStyle(fontSize: FontSize.s16).copyWith(color: ColorManager.darkGray,),),
                const SizedBox(width: AppSize.s50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
