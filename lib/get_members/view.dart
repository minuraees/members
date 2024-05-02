import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:members/get_members/controller.dart';

class MembersView extends GetView<MembersController> {
  final MembersController _controller = Get.put(MembersController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView(
            children: controller.members.map((e) {
          return Text(e);
        }).toList()));
  }
}
