import '../../../core/assets_constants.dart';

class OnBoardingItem {
  const OnBoardingItem({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final String image;
}

const List<OnBoardingItem> onBoardingItems = [
  OnBoardingItem(
    title: 'Explore Marvel Heroes',
    subtitle: 'Discover your favorite Marvel characters!',
    image: AssetsConstants.onBoarding1Image,
  ),
  OnBoardingItem(
    title: 'Detailed Information',
    subtitle: 'Get comprehensive details about each hero!',
    image: AssetsConstants.onBoarding2Image,
  ),
  OnBoardingItem(
    title: 'Stay Updated',
    subtitle: 'Keep up with the latest Marvel updates!',
    image: AssetsConstants.onBoarding3Image,
  ),
];
