
import 'dart:convert';

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
   try{
     String apiPath = "http://api.mocklets.com/mock68182/screentime";
     Response response = await this
         .httpClient
         .get(Uri.parse(apiPath));
     List<dynamic> _responseMap = json.decode(response.body);
     Logger().i("hello world");
     logger.i(response.body);
     logger.i(DataResponse.fromJson(_responseMap[0]).toJson());
     return DataResponse.fromJson(_responseMap[0]);
   }catch(e) {
     Logger().i(e.toString());
   }  }
  }