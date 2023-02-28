import 'modelConfig.dart';

final seatLayout = SeatLayoutModel(
  rows: 11,
  cols: 6,
  seatTypes: [
    {"title": "luxery BUs", "Price": 1200.0, "status": "Badulla"}
  ],
  gap: 1,
  gapColIndex: 3,
  rowBreaks: [20],
  isLastFilled: true,
);
