class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/googlemap.png',
    title: 'A Cool Way to Get Start',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. ',
  ),
  Slide(
    imageUrl: 'assets/images/travel.png',
    title: 'Design Interactive App UI',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum.',
  ),
  Slide(
    imageUrl: 'assets/images/travel3.png',
    title: 'It\'s Just the Beginning',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. ',
  ),
];
