import 'package:bloc/bloc.dart';

import '../../domain/entities/article_entity.dart';
import '../../domain/use_cases/get_articles_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final GetArticlesUseCase getArticlesUseCase;
  HomeBloc({required this.getArticlesUseCase}) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      emit(GetArticlesLoading());
      final result = await getArticlesUseCase.call();
      result.fold((l) {
        emit(GetArticlesFailure(message: l.message));
      }, (r) {
        emit(GetArticlesSuccess(articles: r));
      });
    });
  }
}
