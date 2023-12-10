import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/core/resources/color_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/font_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/style_manager.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';

import '../../../../../core/widgets/custom_fading_widget.dart';

class ArticleDetailsViewBody extends StatelessWidget {
  const ArticleDetailsViewBody({Key? key, required this.article})
      : super(key: key);
  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.articleTitle,
              style: FontStyles.getBoldStyle(fontSize: FontSize.s18),
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            Text(
              article.articleAbstract,
              style: FontStyles.getMediumStyle(fontSize: FontSize.s16)
                  .copyWith(color: ColorManager.gray),
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  article.articleByline,
                  style: FontStyles.getRegularStyle(),
                )),
                Text(
                  article.articlePublishDate,
                  style: FontStyles.getRegularStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            Center(
              child: AspectRatio(
                aspectRatio: 3/2,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(AppSize.s15),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: CachedNetworkImage(
                        imageUrl: article.articleBanner,
                        fit: BoxFit.fill,
                        errorWidget: (context,str,obj)=> const Icon(Icons.error_outline,color: Colors.red,),
                        placeholder: (context, text) {
                          return CustomFadingWidget(
                              child: Container(
                            color: ColorManager.gray,
                          ));
                        })),
              ),
            ),
            Center(
              child: Text(
                "Source: ${article.articleSource}",
                style: FontStyles.getRegularStyle(fontSize: FontSize.s12),
              ),
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: FontStyles.getRegularStyle(fontSize: FontSize.s16),
            ),
          ],
        ),
      ),
    );
  }
}
