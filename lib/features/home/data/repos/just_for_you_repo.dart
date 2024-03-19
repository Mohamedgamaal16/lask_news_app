import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/features/home/data/models/just_for_you_model.dart';
import 'package:trendspot_newes_app/features/home/data/repos/home_repos.dart';

class HomeRepoimplemntion implements HomeRepos {
  final ApiConsumer api;

  HomeRepoimplemntion({required this.api});
  @override
  Future<Either<String, List<JustForYouModel>>> fetchJustForYouNews() async {
    try {
      final response = await api.get(EndPoint.justForYouBaseUrl,
          queryParamters: {
            'country': 'eg',
            'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
          });

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> news = jsonData['articles'];
      List<JustForYouModel> newsList = [];
      for (var article in news) {
        JustForYouModel justForYouModel =
            JustForYouModel(title: article['title'], author: article['author'], urlToImage: article['urlToImage'], );
        newsList.add(justForYouModel);
      }
      return Right(newsList);
    } on Exception catch (e) {
      return const Left('error from fetchJustForYouNews');
    }
  }
}








// class JustForYouRepo {
//   final ApiConsumer api;

//   JustForYouRepo({required this.api});
//   Future<Either<String, List<JustForYouModel>>> justForYouData() async {
//     try {
//       final response = await api.get(EndPoint.topHeadlines, queryParamters: {
//         'country': 'eg',
//         'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
//       });

//       Map<String, dynamic> jsonData = response.data;
//       List<dynamic> articles = jsonData['articles'];
//       List<JustForYouModel> articlesList = [];
//       for (var article in articles) {
//         JustForYouModel justForYouModel =
//             JustForYouModel(title: article['title'], author: article['author']);
//         articlesList.add(justForYouModel);
//       }
//       return Right(articlesList);
//     } catch (e) {
//       return const Left('e.errModel.errorMessage');
//     }
//   }
// }
