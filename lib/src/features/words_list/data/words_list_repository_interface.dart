import 'package:dictionary/src/features/words_list/domain/model/word_model.dart';

abstract class IWordsListRepository {
  Future<dynamic> fetchData();
  Future<Word> fetchDetails(String word);
}
