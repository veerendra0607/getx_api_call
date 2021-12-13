import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_apicall/apirequest/apicall.dart';
import 'package:getx_apicall/model/carmodel.dart';

class UserListController extends GetxController{

  var isLoading =true.obs;
  var  userList=<Datum>[].obs;
  var  user=UserDataModel().obs;


  @override
  void onInit() {
    // TODO: implement onInit
    fetchUsersList();
    super.onInit();
  }

  void fetchUsersList(){
    Timer(Duration(seconds:5),(){
      ApiService.getUserList().then((userDataModel)
      {
        user.value=userDataModel!;
        userList.value=userDataModel.data!;

      });
      isLoading(false);
    });

  }

}