class Product {
  // this is meant to be a product for product's library, for browsing purposes
  // it is meant to be referenced in CartItem rather than to be added to the shopping cart as is
  // TODO add a complete product properties with like isVegan, isLactoseFree etc.
  final int id;
  final String productName;
  final int categoryId;
  final String categoryName;
  final bool isVegan;
  final bool isLactoseFree;

  const Product({
        required this.id,
        required this.productName,
        required this.categoryId,
        required this.categoryName,
        required this.isVegan,
        required this.isLactoseFree
  });
}
