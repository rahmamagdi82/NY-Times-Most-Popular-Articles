import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ny_times_most_popular_articles/core/resources/color_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/font_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/style_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';
import 'package:ny_times_most_popular_articles/core/utils/router_manager.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({Key? key, required this.article}) : super(key: key);
  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(AppRouter.articleDetailsViewPath,extra: article);
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: AppSize.s35,
                backgroundImage: NetworkImage(article.articleImage),
              ),
              const SizedBox(width: AppSize.s15,),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(article.articleTitle,
                    maxLines: 2,overflow: TextOverflow.ellipsis,style: FontStyles.getSemiBoldStyle(fontSize: FontSize.s16),),
                    const SizedBox(height: AppSize.s10,),
                    Text(article.articleByline,maxLines: 2,overflow: TextOverflow.ellipsis,style: FontStyles.getMediumStyle().copyWith(color: ColorManager.darkGray),),
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
                Text(article.articlePublishDate,style: FontStyles.getMediumStyle(fontSize: FontSize.s16).copyWith(color: ColorManager.darkGray,),),
                const SizedBox(width: AppSize.s50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
