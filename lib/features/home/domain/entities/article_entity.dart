import 'package:hive/hive.dart';
part 'article_entity.g.dart';
@HiveType(typeId: 0)
class ArticleEntity extends HiveObject{
  @HiveField(0)
  final String articleImage;
  @HiveField(1)
  final String articleTitle;
  @HiveField(2)
  final String articleByline;
  @HiveField(3)
  final String articlePublishDate;
  @HiveField(4)
  final String articleAbstract;
  @HiveField(5)
  final String articleSource;
  @HiveField(6)
  final String articleBanner;

  ArticleEntity(
      {
        required this.articleImage,
        required this.articleTitle,
        required this.articleByline,
        required this.articlePublishDate,
        required this.articleAbstract,
        required this.articleSource,
        required this.articleBanner,
      });
}