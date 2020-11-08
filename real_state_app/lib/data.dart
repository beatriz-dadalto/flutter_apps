class Property {
  String label;
  String name;
  String price;
  String location;
  String sqm;
  String review;
  String description;
  String frontImage;
  String ownerImage;
  List<String> images;

  Property({
    this.label,
    this.name,
    this.price,
    this.location,
    this.sqm,
    this.review,
    this.description,
    this.frontImage,
    this.ownerImage,
    this.images,
  });
}

List<Property> getPropertyList() {
  return <Property>[
    Property(
      label: 'SALE',
      name: 'Clinton Villa',
      price: '3,500.00',
      location: 'Los Angeles',
      sqm: '2,456',
      review: '4.4',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_01.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'RENT',
      name: 'Salu House',
      price: '3,500.00',
      location: 'Miami',
      sqm: '3,300',
      review: '4.6',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_04.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'RENT',
      name: 'Hilton House',
      price: '3,100.00',
      location: 'California',
      sqm: '2,100',
      review: '4.1',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_02.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'SALE',
      name: 'Ibe House',
      price: '4,500.00',
      location: 'Florida',
      sqm: '4,100',
      review: '4.5',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_03.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'SALE',
      name: 'Aventura',
      price: '5,200.00',
      location: 'New York',
      sqm: '3,100',
      review: '4.2',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_05.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'SALE',
      name: 'North House',
      price: '3,500.00',
      location: 'Florida',
      sqm: '3,700',
      review: '4.0',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_06.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'RENT',
      name: 'Rasmus Resident',
      price: '2,900.00',
      location: 'Detroit',
      sqm: '2,700',
      review: '4.3',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_07.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    Property(
      label: 'RENT',
      name: 'Simone House',
      price: '3,900.00',
      location: 'Florida',
      sqm: '3,700',
      review: '4.4',
      description: 'The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.',
      frontImage: 'assets/images/house_08.jpg',
      ownerImage: 'assets/images/owner.jpg',
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
  ];
}
