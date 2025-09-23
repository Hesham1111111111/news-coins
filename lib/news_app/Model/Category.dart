class Category {
  final String name;
  final String imge;

  const Category({required this.name, required this.imge});
}

List<Category> categorys = [
  Category(
    name: "general",
    imge: "https://images.pexels.com/photos/3944377/pexels-photo-3944377.jpeg",
  ),
  Category(
    name: "sports",
    imge:
        "https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg",
  ),
  Category(
    name: "health",
    imge: "https://images.pexels.com/photos/2080544/pexels-photo-2080544.jpeg",
  ),
  Category(
    name: "business",
    imge: "https://images.pexels.com/photos/935979/pexels-photo-935979.jpeg",
  ),
  Category(
    name: "entertainment",
    imge: "https://images.pexels.com/photos/267350/pexels-photo-267350.jpeg",
  ),
];
