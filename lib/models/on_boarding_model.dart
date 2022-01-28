class OnBoardingModel {
  String? _image;
  String? _title;

  OnBoardingModel(String title, String image) {
    _title = title;
    _image = image;
  }

  String get title => _title!;

  String get image => _image!;
}