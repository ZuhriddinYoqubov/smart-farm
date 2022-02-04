import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smartfarm/models/myanimals_model.dart';

class ServiceMyAnimals {
  static Future<List<MyAnimalsModel>> getMyAnimals() async {
    int id = await GetStorage().read('id');
    Response res =
        await Dio().get(dotenv.env['API_ADDRESS'].toString() + "/users/$id");

    return (res.data['myanimals'] as List)
        .map((e) => MyAnimalsModel.fromJson(e))
        .toList();
  }
}
