//data marbot be welcome page
class AppDatabase {
  static List<OnBoardingItem> get onBoardingItems {
    List<OnBoardingItem> items = [];
    for (var i = 0; i < 4; i++) {
      if(i == 0){
        items.add(OnBoardingItem('Ancient Marvels :','Iran’s architectural heritage dates back to ancient times, with the Achaemenid Empire’s'
                    'Persepolis standing as a testament to grandiose design and intricate stone carvings.'));
      }
      else if(i == 1){
        items.add(OnBoardingItem('Islamic Elegance :','The Islamic era brought stunning mosques and palaces, adorned with intricate tile work and '
                'calligraphy. The Shah Mosque in Isfahan is a prime example of this artistic flourish.'));
      }else if(i == 2){
        items.add(OnBoardingItem('Persian Gardens :',
            'Traditional Persian gardens, like the Fin Garden in Kashan, showcase a unique blend of natural beauty'
                ' and architectural ingenuity, emphasizing symmetry and harmony with nature'));
      }else if(i == 3){
        items.add(OnBoardingItem('Modern Innovations :',
            'Contemporary Iranian architecture blends traditional elements with modern design. The Azadi Tower in Tehran,'
                ' for instance, symbolizes freedom!! and features a fusion of classical and post-classical Iranian styles.'));
      }
    }
    return items;
  }
}

class OnBoardingItem {
  final String title;

  final String description;

  OnBoardingItem(this.title, this.description);}
