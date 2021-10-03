
import 'dart:convert';
import 'dart:html';

import 'package:coinedOne/api/model/dataRequest.dart';
import 'package:coinedOne/api/model/dataResponse.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class UserResourceService {
  Client httpClient;
  Logger logger = Logger();
  UserResourceService() {
    this.httpClient = Client();
  }

  Future<DataResponse> fetchData(
      DataRequest dataRequest) async {
    String apiPath = "https://api.mocklets.com/mock68182/screentime";
    Response response = await this
        .httpClient
        .get(Uri.parse(apiPath));
    Map<dynamic, dynamic> _responseMap = json.decode(response.body);
    logger.i(response.body);
    logger.i(DataResponse.fromJson(_responseMap).toJson());
    return DataResponse.fromJson(_responseMap);
  }
  }