class AppImages {
  static AppImages instance = AppImages._internal();

  AppImages._internal();

  factory AppImages() {
    return instance;
  }

  String get loginBanner => 'assets/login_banner.png';

  String get homeIcon => 'assets/home_icon.svg';

  String get categoryIcon => 'assets/category_icon.svg';

  String get featureIcon => 'assets/feature_icon.svg';

  String get accountIcon => 'assets/account_icon.svg';

  String get activeHomeIcon => 'assets/active_home_icon.svg';

  String get activeCategoryIcon => 'assets/active_category_icon.svg';

  String get activeFeatureIcon => 'assets/active_feature_icon.svg';

  String get activeAccountIcon => 'assets/active_account_icon.svg';

  String get architect => 'assets/architect_png.png';

  String get landPromoters => 'assets/land_promoters.png';

  String get engineers => 'assets/engineers.png';

  String get realestate => 'assets/realestate.png';

  String get builders => 'assets/builders.png';

  String get contractors => 'assets/contractors.png';

  String get registration => 'assets/registration.png';

  String get bankLoan => 'assets/bank_loan.png';

  String get businessList => 'assets/business_list.png';

  String get socialMedia => 'assets/social_media.png';

  String get volumeImage => 'assets/volume_image.png';

  String get houseImage => 'assets/house_image.png';
}
