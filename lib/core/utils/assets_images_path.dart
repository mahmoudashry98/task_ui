const String imageAssetsRoot = "assets/images/";
const String iconAssetsRoot = "assets/icons/";

String startImage = _getAssetsImagePath('start_image.png');
String icon = _getAssetsImagePath('icon.png');
String bootImage = _getAssetsImagePath('boot.png');
String background = _getAssetsImagePath('background.png');
String bootIcon = _getAssetsImagePath('boot_icon.png');
String strokeImage = _getAssetsImagePath('Stroke 1.png');
String pathicon = _getAssetsImagePath('Path 109.png');
String voiceicon = _getAssetsImagePath('Voice 2.png');
String personImage = _getAssetsImagePath('p1.png');
String person1Image = _getAssetsImagePath('p2.png');
String person2Image = _getAssetsImagePath('p3.png');
String humanResourceImage = _getAssetsImagePath('Human_Resource.png');
String immigrationImage = _getAssetsImagePath('Immigration.png');
String patternImage = _getAssetsImagePath('pattern.png');
String securityImage = _getAssetsImagePath('Security.png');
String translationImage = _getAssetsImagePath('Translation.png');
String supplyChainImage = _getAssetsImagePath('Supply_Chain.png');

String _getAssetsImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}

String _getAssetsIconPath(String fileName) {
  return iconAssetsRoot + fileName;
}
