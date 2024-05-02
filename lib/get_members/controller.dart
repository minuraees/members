import 'package:get/get.dart';
import 'package:members/firestoredata/firestoredata.dart';

class MembersController extends GetxController {
  var members = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    getMembersData();
  }

  Future<void> getMembersData() async {
    members.value = await Firestoredata().getData();
  }
}
