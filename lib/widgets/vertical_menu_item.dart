import 'package:first_web_app/constants/controllers.dart';
import 'package:first_web_app/constants/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'custom_text.dart';

class VertticalMenuItem extends StatelessWidget {
  final String? itemName;
  final Function? onTap;
  const VertticalMenuItem(
      {this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap as void Function(),
        onHover: (value) {
          value
              ? menuController.onHover(itemName!)
              : menuController
                  .onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController
                      .isHovering(itemName!)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController
                            .isHovering(
                                itemName!) ||
                        menuController
                            .isActive(itemName!),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize:
                            MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets
                                    .all(16),
                            child: menuController
                                .returnIconFor(
                                    itemName!),
                          ),
                          if (!menuController
                              .isActive(
                                  itemName!))
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: menuController
                                      .isHovering(
                                          itemName!)
                                  ? Colors.white
                                  : lightGrey,
                            ))
                          else
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: Colors.white,
                              size: 18,
                              weight:
                                  FontWeight.bold,
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
