import 'package:flutter/material.dart';

class SeatLayoutModel {
  final List<Map<String, dynamic>> seatTypes;
  final List<int> rowBreaks;
  final int rows;
  final int cols;
  final int gap;
  final int gapColIndex;
  final bool isLastFilled;
  SeatLayoutModel({
    required this.seatTypes,
    required this.rowBreaks,
    required this.rows,
    required this.cols,
    required this.gap,
    required this.gapColIndex,
    required this.isLastFilled,
  });

  factory SeatLayoutModel.fromMap(Map<String, dynamic> map) {
    return SeatLayoutModel(
      rows: map['rows']?.toInt() ?? 0,
      cols: map['cols']?.toInt() ?? 0,
      seatTypes:
          List<Map<String, dynamic>>.from(map['seatTypes']?.map((x) => x)),
      // theatreId: map['theatreId']?.toInt() ?? 0,
      gap: map['gap']?.toInt() ?? 0,
      gapColIndex: map['gapColIndex']?.toInt() ?? 0,
      isLastFilled: map['isLastFilled'] ?? false,
      rowBreaks: List<int>.from(map['rowBreaks']),
    );
  }
}
