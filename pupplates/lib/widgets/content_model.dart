class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent({
    required this.description,
    required this.title,
    required this.image,
  });
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Give your love to your cuties',
      title: 'They Need It',
      image: 'assets/image/dogimg.png'),
  UnboardingContent(
      description:
          'You can pay cash on delivery and \n          Card payment available',
      title: 'Card Payments',
      image: 'assets/image/Card.png'),
  UnboardingContent(
      description: 'Deliver your food at your\n               Doorstep',
      title: 'Delivering',
      image: 'assets/image/deliver.png')
];
