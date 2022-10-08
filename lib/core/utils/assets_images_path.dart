const String imageAssetsRoot = "assets/images/";
const String iconAssetsRoot = "assets/icons/";

String startImage = _getAssetsImagePath('start_image.png');
String icon = _getAssetsImagePath('icon.png');
String bootImage = _getAssetsImagePath('boot.png');
String background = _getAssetsImagePath('background.png');

String _getAssetsImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}

String _getAssetsIconPath(String fileName) {
  return iconAssetsRoot + fileName;
}
