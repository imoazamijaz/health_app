import 'package:flutter/material.dart';

class MenuPopClass extends StatelessWidget {
  const MenuPopClass({super.key});

  final textColor = const Color(0xFF32B5AD);
  final pad = const EdgeInsets.symmetric(horizontal: 8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 30,
              width: 30,
              child: PopupMenuButton(
                color: const Color(0xFF353535),
                padding: const EdgeInsets.symmetric(horizontal: 0),
                //constraints: BoxConstraints(maxHeight: 150, maxWidth: 190),
                offset: const Offset(0, 0),
                position: PopupMenuPosition.under,
                iconSize: 22,
                icon: const Icon(
                  Icons.more_vert,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                itemBuilder: (context) {
                  return [
                     PopupMenuItem<int>(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      value: 0,
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: pad,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Block User",
                                    style: TextStyle(color: textColor),
                                  ),
                                  Icon(
                                    Icons.file_copy_rounded,
                                    color: textColor,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                     PopupMenuItem<int>(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      value: 1,
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: pad,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Report User",
                                    style: TextStyle(color: textColor),
                                  ),
                                  Icon(
                                    Icons.file_copy,
                                    color: textColor,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                     PopupMenuItem<int>(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      value: 0,
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: pad,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Block User",
                                    style: TextStyle(color: textColor),
                                  ),
                                  Icon(
                                    Icons.file_copy_rounded,
                                    color: textColor,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                     PopupMenuItem<int>(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      value: 1,
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: pad,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Report User",
                                    style: TextStyle(color: textColor),
                                  ),
                                  Icon(
                                    Icons.file_copy,
                                    color: textColor,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}