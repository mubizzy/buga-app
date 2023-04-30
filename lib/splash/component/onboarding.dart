class OnBoarding {
  final String title;
  final String image;

  final String text;

  OnBoarding({
    required this.title,
    required this.image,
    required this.text,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
      title: 'Order Pick-Up',
      image: "assets/images/illustration-WTV.png",
      text: "Order for your packages pick-up straight from the app."),
  OnBoarding(
      title: 'In-App Tracker',
      image: 'assets/images/illustration-47m.png',
      text: "Order for your packages pick-up straight from the app."),
  OnBoarding(
      title: 'Express Delivery',
      image: 'assets/images/illustration-8CB.png',
      text: "Order for your packages pick-up straight from the app."),
];
