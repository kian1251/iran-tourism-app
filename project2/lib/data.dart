//data marbot be welcome page
class AppDatabase {
  static List<OnBoardingItem> get onBoardingItems {
    List<OnBoardingItem> items = [];
    for (var i = 0; i < 4; i++) {
      items.add(OnBoardingItem('Some Thing about AppIndicator with a Directionality widget from the flutter package',
          '  the Indicator with a Directionality widget from the flutter'
                ' package.get or wrapping the Indicator with a Directionality widget'
                       ' from the flutter package.passing it directly to the widget or wrapping the '
                                'Indicator with a Directionality widget from the flutter package.'));
    }
    return items;
  }
}

class OnBoardingItem {
  final String title;

  final String description;

  OnBoardingItem(this.title, this.description);
}
