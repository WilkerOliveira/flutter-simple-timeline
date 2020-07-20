import 'package:simple_timeline/model/ItemModel.dart';

class TimelineUtils {
  static List<ItemModel> getItems() {
    return [
      ItemModel(
          dateDescription: "Today",
          date: "20",
          yearDescription: "dez/20",
          description: "Uber",
          amount: "\$ 20.00",
          showDate: true,
          showIcon: true),
      ItemModel(
          dateDescription: "Today",
          date: "20",
          yearDescription: "dez/20",
          description: "Uber",
          amount: "\$ 10.00",
          showDate: false,
          showIcon: true),
      ItemModel(
          dateDescription: "Monday",
          date: "19",
          yearDescription: "dez/20",
          description: "Five Guys",
          amount: "\$ 21.30",
          showDate: true,
          showIcon: true),
      ItemModel(
          dateDescription: "Monday",
          date: "19",
          yearDescription: "dez/20",
          description: "Dino Pizza",
          amount: "\$ 15.10",
          showDate: false,
          showIcon: true),
      ItemModel(
          dateDescription: "Monday",
          date: "19",
          yearDescription: "dez/20",
          description: "Car wash",
          amount: "\$ 34.11",
          showDate: false,
          showIcon: true),
      ItemModel(
          dateDescription: "Sunday",
          date: "18",
          yearDescription: "dez/20",
          description: "Five Guys",
          amount: "\$ 5.30",
          showDate: true,
          showIcon: true),
      ItemModel(
          dateDescription: "Sunday",
          date: "19",
          yearDescription: "dez/20",
          description: "Uber",
          amount: "\$ 18.12",
          showDate: false,
          showIcon: true),
    ];
  }
}
