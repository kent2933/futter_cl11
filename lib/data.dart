class PlacesInfo {
  final int index;
  final String name;
  final String image;
  final String location;
  PlacesInfo(this.index, {this.image, this.name, this.location});
}

List<PlacesInfo> places = [
  PlacesInfo(0,
      name: 'Jasper National Park 1',
      image: 'assets/images/jasper_national_park_1.png',
      location: 'Alberta, Canada'),
  PlacesInfo(1,
      name: 'Jasper National Park 2',
      image: 'assets/images/jasper_national_park.png',
      location: 'Albertaa, Canada'),
  PlacesInfo(2,
      name: 'Jasper National Park 3',
      image: 'assets/images/jasper_national_park_1.png',
      location: 'Albertaaa, Canada'),
  PlacesInfo(3,
      name: 'Jasper National Park 4',
      image: 'assets/images/jasper_national_park.png',
      location: 'Albertaaaa, Canada'),
  PlacesInfo(4,
      name: 'Jasper National Park 5',
      image: 'assets/images/jasper_national_park_1.png',
      location: 'Albertaaaaa, Canada')
];
