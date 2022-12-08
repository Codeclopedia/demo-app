import 'package:flutter_application_1/Model/ApiResponse.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ApiController extends GetxController {
  Rx<ApiResponseModel>? apidata;
  RxString host = "https://app.bvidya.com/".obs;

  callApi() async {
    var headers = {
      'X-Auth-Token':
          '\$2y\$10\$ISukbl4Anoz.Pz.uX7begu61lIr6qk1b1m7ecBphTn8DelxalWz1C'
    };
    var request = http.Request('GET', Uri.parse('${host}api/home'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      apidata = apiResponseModelFromJson(data).obs;
      return apidata;
    } else {
      print(response.reasonPhrase);
    }
  }
}
