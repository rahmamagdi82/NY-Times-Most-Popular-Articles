class ArticleEntity{
  final String articleImage;
  final String articleTitle;
  final String articleByline;
  final String articlePublishDate;
  final String articleAbstract;
  final String articleSource;
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