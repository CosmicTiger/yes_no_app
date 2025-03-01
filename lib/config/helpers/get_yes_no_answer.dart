import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

/// NOTE: This is a helper function that gets a yes or no answer from the user.
/// Using http functions, which can be used from http library from pub.dev or dio library.
/// The difference between each other is that http requires more dependencies than dio. So is only optimization purposes the decision from one to another.
class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final YesNoModel yesNoModel =
        YesNoModel.fromJsonMap(response.data as Map<String, dynamic>);

    return Message(
        text: yesNoModel.answer,
        fromWho: FromWho.other,
        imageUrl: yesNoModel.image);
  }
}
