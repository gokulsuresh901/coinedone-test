
class DataResponse {
  ChartData chartData;
  String freeTimeMaxUsage;
  ChartData deviceUsage;

  DataResponse({this.chartData, this.freeTimeMaxUsage, this.deviceUsage});

  DataResponse.fromJson(Map<String, dynamic> json) {
    chartData = json['chartData'] != null
        ? new ChartData.fromJson(json['chartData'])
        : null;
    freeTimeMaxUsage = json['freeTimeMaxUsage'];
    deviceUsage = json['deviceUsage'] != null
        ? new ChartData.fromJson(json['deviceUsage'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.chartData != null) {
      data['chartData'] = this.chartData.toJson();
    }
    data['freeTimeMaxUsage'] = this.freeTimeMaxUsage;
    if (this.deviceUsage != null) {
      data['deviceUsage'] = this.deviceUsage.toJson();
    }
    return data;
  }
}

class ChartData {
  TotalTime totalTime;
  TotalTime studyTime;
  TotalTime classTime;
  TotalTime freeTime;

  ChartData({this.totalTime, this.studyTime, this.classTime, this.freeTime});

  ChartData.fromJson(Map<String, dynamic> json) {
    totalTime = json['totalTime'] != null
        ? new TotalTime.fromJson(json['totalTime'])
        : null;
    studyTime = json['studyTime'] != null
        ? new TotalTime.fromJson(json['studyTime'])
        : null;
    classTime = json['classTime'] != null
        ? new TotalTime.fromJson(json['classTime'])
        : null;
    freeTime = json['freeTime'] != null
        ? new TotalTime.fromJson(json['freeTime'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.totalTime != null) {
      data['totalTime'] = this.totalTime.toJson();
    }
    if (this.studyTime != null) {
      data['studyTime'] = this.studyTime.toJson();
    }
    if (this.classTime != null) {
      data['classTime'] = this.classTime.toJson();
    }
    if (this.freeTime != null) {
      data['freeTime'] = this.freeTime.toJson();
    }
    return data;
  }
}

class TotalTime {
  String total;

  TotalTime({this.total});

  TotalTime.fromJson(Map<String, dynamic> json) {
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    return data;
  }
}

class TotalTime1 {
  String mobile;
  String laptop;

  TotalTime1({this.mobile, this.laptop});

  TotalTime1.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    laptop = json['laptop'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['laptop'] = this.laptop;
    return data;
  }
}