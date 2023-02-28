import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'modelConfig.dart';

class MySeatLayout extends StatelessWidget {
  final SeatLayoutModel model;
  const MySeatLayout({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    int alphabetCounter = -1;
    int seatCounter = 0;
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: model.seatTypes.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      color: const Color.fromARGB(255, 207, 207, 207),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\u20A8 ${model.seatTypes[index]['Price']} ${model.seatTypes[index]['title']}",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ...List.generate(model.rows, (row) {
                            alphabetCounter++;
                            return Wrap(
                              children: [
                                ...List.generate(model.cols, (col) {
                                  if (col == 0) {
                                    return Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: Text(
                                          String.fromCharCode(
                                              65 + alphabetCounter),
                                        ),
                                      ),
                                    );
                                  }

                                  if ((col == model.gapColIndex ||
                                          col ==
                                              model.gapColIndex +
                                                  model.gap -
                                                  1) &&
                                      (row != model.rows - 1 &&
                                          model.isLastFilled)) {
                                    return const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                      ),
                                    );
                                  }

                                  seatCounter++;
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color.fromARGB(
                                              255, 243, 141, 141)),
                                      height: 40,
                                      width: 40,
                                      child: Center(
                                        child: Text(
                                          "$seatCounter",
                                          style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  );
                                })
                              ],
                            );
                          })
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
