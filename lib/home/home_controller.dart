import 'package:get/get.dart';
import '../model/event.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    setDataEventFilter("");
    super.onInit();
  }

  setDataEventFilter(String filter) {
    if (filter == "") {
      eventFilter.value = events;
    } else {
      List<Event> listFilter = [];
      for (var element in events) {
        if (element.title.toString().toLowerCase().contains(filter)) {
          listFilter.add(element);
        }
      }
      eventFilter.value = listFilter;
    }
  }

  RxList<Event> eventFilter = <Event>[].obs;
  List<Event> events = <Event>[
    Event(
      date: "Tue, 21 Feb 2023, 1:00 PM",
      title: "Si Kijang Money Box",
      location: "Sasana Kijang, Bank Negara Malaysia",
      slot: "Unlimited Slots",
    ),
    Event(
      date: "Wed, 1 Mar 2023, 11:00 AM",
      title: "Talk: 'Get To Know Your Banknotes'",
      location: "Sasana Kijang, Bank Negara Malaysia",
      slot: "Unlimited Slots",
    ),
    Event(
      date: "Wed, 1 Mar 2023, 11:00 AM",
      title: "Task: How old is the Ringgit",
      location: "Sasana Kijang, Bank Negara Malaysia",
      slot: "Unlimited Slots",
    ),
    Event(
      date: "Wed, 1 Mar 2023, 11:00 AM",
      title: "Talk: Bank Negara Malaysia - What do we do?",
      location: "Sasana Kijang, Bank Negara Malaysia",
      slot: "Unlimited Slots",
    ),
  ];
}
