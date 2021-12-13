import 'package:getx_apicall/apiurl.dart';
import 'package:getx_apicall/model/carmodel.dart';
import 'package:http/http.dart' as http;

class ApiService{

  static var client= http.Client();

  static Future<UserDataModel?> getUserList() async{
    var response =await client.get(Uri.parse(ApiUrl().apiUrl));
    if(response.statusCode==200){
      print(response.body);
      var jsonString =response.body;
      return userDataModelFromJson(jsonString);
    }
    else{
      print("null");
    }
    return null;
  }
}