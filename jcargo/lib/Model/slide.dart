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
    imageUrl:
        'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Maps_Pin_FullColor.max-1000x1000.png',
    title: 'A Cool Way to Get Start',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. ',
  ),
  Slide(
    imageUrl: 'https://images.wsj.net/im-613589/?width=1278&size=1',
    title: 'Design Interactive App UI',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum.',
  ),
  Slide(
    imageUrl:
        'https://media.istockphoto.com/photos/friends-ride-sharing-picture-id1143478858?k=20&m=1143478858&s=612x612&w=0&h=ApfGEjH_5hW4uNL89FmWkK_YoR3Ev0RSdVuJdkbxqa4=',
    title: 'It\'s Just the Beginning',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. ',
  ),
];
