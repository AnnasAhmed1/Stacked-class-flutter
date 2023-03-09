import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int counter = 0;

  updateCounter() {
    counter++;
    print(counter);
    rebuildUi();
  }
}
