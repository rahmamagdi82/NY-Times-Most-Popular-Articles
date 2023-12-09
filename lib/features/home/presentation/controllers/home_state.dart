part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetArticlesLoading extends HomeState {}

class GetArticlesSuccess extends HomeState {

  final List<ArticleEntity> articles;

  GetArticlesSuccess({required this.articles});
}

class GetArticlesFailure extends HomeState {
  final String message;

  GetArticlesFailure({required this.message});
}


