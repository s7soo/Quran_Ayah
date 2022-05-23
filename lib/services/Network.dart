
import 'package:untitled/constants.dart';
import 'package:untitled/services/api.dart';
class Network{
  Future<dynamic> getAyah(int ayahNum) async {
    var url = Constants.url;
    var reader = 'ar.alafasy';

    Api api = Api('$url/$ayahNum/$reader');

    var quranData = await api.getData();
    return quranData;
  }
}