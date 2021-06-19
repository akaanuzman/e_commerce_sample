enum ProductServiceEndPoints { PRODUCTS }

extension ProductServiceExtension on ProductServiceEndPoints {
  String get rawValue {
    switch (this) {
      case ProductServiceEndPoints.PRODUCTS:
        return 'products';
    }
  }
}
