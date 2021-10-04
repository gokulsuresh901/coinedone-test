

import 'package:coinedOne/api/model/dataRequest.dart';
import 'package:coinedOne/api/model/dataResponse.dart';
import 'package:coinedOne/api/service/user_resourse_service.dart';
import 'package:get_it/get_it.dart';

class ApiBridge {
  UserResourceService userResourceService = GetIt.I.get<UserResourceService>();

  ApiBridge();

  Future<DataResponse> fetchData() async {
    return this.userResourceService.fetchData(DataRequest());
  }
}