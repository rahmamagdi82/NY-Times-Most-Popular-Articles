import 'package:ny_times_most_popular_articles/core/utils/api_services.dart';
import 'package:ny_times_most_popular_articles/features/home/data/models/article_model.dart';

abstract class HomeRemoteDataSource{
  Future<List<ArticleModel>> getArticles();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  
  final ApiServices apiServices;

  HomeRemoteDataSourceImp({required this.apiServices});

  final String getArticlesEndPoint = '/viewed/7.json?api-key=nHhlPTRufjGYWnU0WfbSVT7hT1GTgBof';

  @override
  Future<List<ArticleModel>> getArticles() async {
    final result = await apiServices.get(endPoint: getArticlesEndPoint);
    List<ArticleModel> list = getArticlesList(result);
    return list;
  }


  List<ArticleModel> getArticlesList(Map<String,dynamic> json){
    List<ArticleModel> articles = [];
    for(var article in json['results']){
      articles.add(ArticleModel.fromJson(article));
    }
    return articles;
  }
}