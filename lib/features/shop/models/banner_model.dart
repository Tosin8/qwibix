// ignore_for_file: public_member_api_docs, sort_constructors_first
class BannerModel {
  String imageUrl;
  final String targetScreen; 
  final bool active; 
  BannerModel({
    required this.imageUrl,
    required this.targetScreen,
    required this.active,
  });

  Map<String, dynamic> toJson() {
    return {
      'imageUrl' : imageUrl, 
      'targetScreen' : targetScreen, 
      'active': active, 
    }; 
  }
}
