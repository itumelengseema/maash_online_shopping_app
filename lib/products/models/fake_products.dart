import 'package:maash_online_shopping_app/products/enums/product_department.dart';
import 'package:maash_online_shopping_app/products/enums/product_season.dart';
import 'package:maash_online_shopping_app/products/enums/product_size_system.dart';
import 'package:maash_online_shopping_app/products/enums/product_type.dart';
import 'package:maash_online_shopping_app/products/enums/product_category.dart';
import 'package:maash_online_shopping_app/products/models/brand_model.dart';
import 'package:maash_online_shopping_app/products/models/product_collection.dart';
import 'package:maash_online_shopping_app/products/models/product_model.dart';
import 'package:maash_online_shopping_app/products/models/product_size_model.dart';

import 'package:maash_online_shopping_app/products/models/product_variant_model.dart';

// ============================================================
// BRANDS
// ============================================================

final maashBrand = Brand(
  id: 1,
  name: 'Maash',
  logoUrl: 'https://placehold.co/300x120?text=MAASH',
);

final northlineBrand = Brand(
  id: 2,
  name: 'Northline',
  logoUrl: 'https://placehold.co/300x120?text=NORTHLINE',
);

final velaBrand = Brand(
  id: 3,
  name: 'Vela',
  logoUrl: 'https://placehold.co/300x120?text=VELA',
);

final arcAndCoBrand = Brand(
  id: 4,
  name: 'Arc & Co.',
  logoUrl: 'https://placehold.co/300x120?text=ARC+%26+CO',
);

final littleOakBrand = Brand(
  id: 5,
  name: 'Little Oak',
  logoUrl: 'https://placehold.co/300x120?text=LITTLE+OAK',
);

// ============================================================
// COLLECTIONS
// ============================================================

final newArrivalsCollection = ProductCollection(
  id: 1,
  name: 'New Arrivals',
  description: 'Fresh styles recently added to Maash.',
  imageUrl:
      'https://images.unsplash.com/photo-1445205170230-053b83016050'
      '?auto=format&fit=crop&w=1000&q=80',
);

final summerEditCollection = ProductCollection(
  id: 2,
  name: 'Summer Edit',
  description: 'Lightweight styles for warmer days.',
  imageUrl:
      'https://images.unsplash.com/photo-1483985988355-763728e1935b'
      '?auto=format&fit=crop&w=1000&q=80',
);

final streetwearCollection = ProductCollection(
  id: 3,
  name: 'Streetwear',
  description: 'Relaxed everyday streetwear essentials.',
  imageUrl:
      'https://images.unsplash.com/photo-1523381210434-271e8be1f52b'
      '?auto=format&fit=crop&w=1000&q=80',
);

final officeEditCollection = ProductCollection(
  id: 4,
  name: 'Office Edit',
  description: 'Smart clothing for work and formal occasions.',
  imageUrl:
      'https://images.unsplash.com/photo-1490481651871-ab68de25d43d'
      '?auto=format&fit=crop&w=1000&q=80',
);

final saleCollection = ProductCollection(
  id: 5,
  name: 'Sale',
  description: 'Selected styles at reduced prices.',
  imageUrl:
      'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da'
      '?auto=format&fit=crop&w=1000&q=80',
);

final essentialsCollection = ProductCollection(
  id: 6,
  name: 'Everyday Essentials',
  description: 'Easy pieces for everyday wear.',
  imageUrl:
      'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3'
      '?auto=format&fit=crop&w=1000&q=80',
);

final kidsCollection = ProductCollection(
  id: 7,
  name: 'Little Styles',
  description: 'Comfortable everyday fashion for kids.',
  imageUrl:
      'https://images.unsplash.com/photo-1519238263530-99bdd11df2ea'
      '?auto=format&fit=crop&w=1000&q=80',
);

// ============================================================
// PRODUCTS
// ============================================================

final List<Product> fakeProducts = [
  // ==========================================================
  // 1. MEN - CARGO PANTS
  // ==========================================================
  Product(
    id: 1,
    title: 'Relaxed Cargo Pants',
    description:
        'Relaxed-fit cargo pants with utility pockets and a tapered leg.',
    price: 699.99,
    salePrice: 549.99,
    imageUrl:
        'https://images.unsplash.com/photo-1624378439575-d8705ad7ae80'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.6,
    ratingCount: 128,
    brand: maashBrand,
    category: ProductCategory.clothing,
    productType: ProductType.pants,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.men,
    variants: [
      ProductVariantModel(
        id: 1,
        size: ProductSize(value: '30', system: ProductSizeSystem.waist),
        colour: 'Black',
        stockQuantity: 6,
      ),
      ProductVariantModel(
        id: 2,
        size: ProductSize(value: '32', system: ProductSizeSystem.waist),
        colour: 'Black',
        stockQuantity: 11,
      ),
      ProductVariantModel(
        id: 3,
        size: ProductSize(value: '34', system: ProductSizeSystem.waist),
        colour: 'Black',
        stockQuantity: 8,
      ),
      ProductVariantModel(
        id: 4,
        size: ProductSize(value: '36', system: ProductSizeSystem.waist),
        colour: 'Black',
        stockQuantity: 3,
      ),
    ],
    collections: [newArrivalsCollection, streetwearCollection, saleCollection],
  ),

  // ==========================================================
  // 2. MEN - OVERSIZED T-SHIRT
  // ==========================================================
  Product(
    id: 2,
    title: 'Core Oversized T-Shirt',
    description:
        'Heavyweight cotton T-shirt with dropped shoulders and an oversized fit.',
    price: 399.99,
    imageUrl:
        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.8,
    ratingCount: 241,
    brand: northlineBrand,
    category: ProductCategory.clothing,
    productType: ProductType.tshirt,
    productSeason: ProductSeason.summer,
    productDepartment: ProductDepartment.men,
    variants: [
      ProductVariantModel(
        id: 5,
        size: ProductSize(value: 'S', system: ProductSizeSystem.alpha),
        colour: 'White',
        stockQuantity: 9,
      ),
      ProductVariantModel(
        id: 6,
        size: ProductSize(value: 'M', system: ProductSizeSystem.alpha),
        colour: 'White',
        stockQuantity: 14,
      ),
      ProductVariantModel(
        id: 7,
        size: ProductSize(value: 'L', system: ProductSizeSystem.alpha),
        colour: 'White',
        stockQuantity: 8,
      ),
      ProductVariantModel(
        id: 8,
        size: ProductSize(value: 'XL', system: ProductSizeSystem.alpha),
        colour: 'White',
        stockQuantity: 4,
      ),
    ],
    collections: [
      summerEditCollection,
      streetwearCollection,
      essentialsCollection,
    ],
  ),

  // ==========================================================
  // 3. WOMEN - MIDI DRESS
  // ==========================================================
  Product(
    id: 3,
    title: 'Luna Satin Midi Dress',
    description:
        'Elegant satin midi dress with adjustable straps and a flowing silhouette.',
    price: 899.99,
    salePrice: 749.99,
    imageUrl:
        'https://images.unsplash.com/photo-1595777457583-95e059d581b8'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.7,
    ratingCount: 96,
    brand: velaBrand,
    category: ProductCategory.clothing,
    productType: ProductType.dress,
    productSeason: ProductSeason.summer,
    productDepartment: ProductDepartment.women,
    variants: [
      ProductVariantModel(
        id: 9,
        size: ProductSize(value: '8', system: ProductSizeSystem.uk),
        colour: 'Champagne',
        stockQuantity: 5,
      ),
      ProductVariantModel(
        id: 10,
        size: ProductSize(value: '10', system: ProductSizeSystem.uk),
        colour: 'Champagne',
        stockQuantity: 7,
      ),
      ProductVariantModel(
        id: 11,
        size: ProductSize(value: '12', system: ProductSizeSystem.uk),
        colour: 'Champagne',
        stockQuantity: 4,
      ),
      ProductVariantModel(
        id: 12,
        size: ProductSize(value: '14', system: ProductSizeSystem.uk),
        colour: 'Champagne',
        stockQuantity: 2,
      ),
    ],
    collections: [newArrivalsCollection, summerEditCollection, saleCollection],
  ),

  // ==========================================================
  // 4. UNISEX - SNEAKERS
  // ==========================================================
  Product(
    id: 4,
    title: 'Metro Runner',
    description:
        'Lightweight everyday sneakers with cushioned support and breathable panels.',
    price: 1299.99,
    imageUrl:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.5,
    ratingCount: 312,
    brand: arcAndCoBrand,
    category: ProductCategory.footwear,
    productType: ProductType.sneakers,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.unisex,
    variants: [
      ProductVariantModel(
        id: 13,
        size: ProductSize(value: '6', system: ProductSizeSystem.uk),
        colour: 'Red',
        stockQuantity: 5,
      ),
      ProductVariantModel(
        id: 14,
        size: ProductSize(value: '7', system: ProductSizeSystem.uk),
        colour: 'Red',
        stockQuantity: 8,
      ),
      ProductVariantModel(
        id: 15,
        size: ProductSize(value: '8', system: ProductSizeSystem.uk),
        colour: 'Red',
        stockQuantity: 10,
      ),
      ProductVariantModel(
        id: 16,
        size: ProductSize(value: '9', system: ProductSizeSystem.uk),
        colour: 'Red',
        stockQuantity: 0,
      ),
    ],
    collections: [newArrivalsCollection, streetwearCollection],
  ),

  // ==========================================================
  // 5. MEN - FORMAL SHIRT
  // ==========================================================
  Product(
    id: 5,
    title: 'Tailored Oxford Shirt',
    description:
        'A structured cotton Oxford shirt for work and smart-casual occasions.',
    price: 649.99,
    imageUrl:
        'https://images.unsplash.com/photo-1603252109303-2751441dd157'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.4,
    ratingCount: 74,
    brand: maashBrand,
    category: ProductCategory.clothing,
    productType: ProductType.shirt,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.men,
    variants: [
      ProductVariantModel(
        id: 17,
        size: ProductSize(value: '38', system: ProductSizeSystem.eu),
        colour: 'White',
        stockQuantity: 5,
      ),
      ProductVariantModel(
        id: 18,
        size: ProductSize(value: '40', system: ProductSizeSystem.eu),
        colour: 'White',
        stockQuantity: 9,
      ),
      ProductVariantModel(
        id: 19,
        size: ProductSize(value: '42', system: ProductSizeSystem.eu),
        colour: 'White',
        stockQuantity: 6,
      ),
      ProductVariantModel(
        id: 20,
        size: ProductSize(value: '44', system: ProductSizeSystem.eu),
        colour: 'White',
        stockQuantity: 2,
      ),
    ],
    collections: [officeEditCollection, essentialsCollection],
  ),

  // ==========================================================
  // 6. WOMEN - JEANS
  // ==========================================================
  Product(
    id: 6,
    title: 'High Rise Straight Jeans',
    description:
        'Classic high-rise denim jeans with a relaxed straight-leg fit.',
    price: 799.99,
    imageUrl:
        'https://images.unsplash.com/photo-1541099649105-f69ad21f3246'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.6,
    ratingCount: 188,
    brand: northlineBrand,
    category: ProductCategory.clothing,
    productType: ProductType.jeans,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.women,
    variants: [
      ProductVariantModel(
        id: 21,
        size: ProductSize(value: '26', system: ProductSizeSystem.waist),
        colour: 'Blue',
        stockQuantity: 4,
      ),
      ProductVariantModel(
        id: 22,
        size: ProductSize(value: '28', system: ProductSizeSystem.waist),
        colour: 'Blue',
        stockQuantity: 8,
      ),
      ProductVariantModel(
        id: 23,
        size: ProductSize(value: '30', system: ProductSizeSystem.waist),
        colour: 'Blue',
        stockQuantity: 6,
      ),
      ProductVariantModel(
        id: 24,
        size: ProductSize(value: '32', system: ProductSizeSystem.waist),
        colour: 'Blue',
        stockQuantity: 3,
      ),
    ],
    collections: [essentialsCollection, streetwearCollection],
  ),

  // ==========================================================
  // 7. MEN - HOODIE
  // ==========================================================
  Product(
    id: 7,
    title: 'Essential Pullover Hoodie',
    description: 'Soft heavyweight fleece hoodie with a relaxed everyday fit.',
    price: 849.99,
    salePrice: 699.99,
    imageUrl:
        'https://images.unsplash.com/photo-1556821840-3a63f95609a7'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.9,
    ratingCount: 344,
    brand: maashBrand,
    category: ProductCategory.clothing,
    productType: ProductType.hoodie,
    productSeason: ProductSeason.winter,
    productDepartment: ProductDepartment.men,
    variants: [
      ProductVariantModel(
        id: 25,
        size: ProductSize(value: 'S', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 6,
      ),
      ProductVariantModel(
        id: 26,
        size: ProductSize(value: 'M', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 13,
      ),
      ProductVariantModel(
        id: 27,
        size: ProductSize(value: 'L', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 7,
      ),
      ProductVariantModel(
        id: 28,
        size: ProductSize(value: 'XL', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 4,
      ),
    ],
    collections: [streetwearCollection, saleCollection],
  ),

  // ==========================================================
  // 8. WOMEN - BLAZER
  // ==========================================================
  Product(
    id: 8,
    title: 'Structured Everyday Blazer',
    description:
        'Single-breasted tailored blazer designed for work and smart styling.',
    price: 1199.99,
    imageUrl:
        'https://images.unsplash.com/photo-1551028719-00167b16eac5'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.5,
    ratingCount: 105,
    brand: velaBrand,
    category: ProductCategory.clothing,
    productType: ProductType.jacket,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.women,
    variants: [
      ProductVariantModel(
        id: 29,
        size: ProductSize(value: 'S', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 4,
      ),
      ProductVariantModel(
        id: 30,
        size: ProductSize(value: 'M', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 7,
      ),
      ProductVariantModel(
        id: 31,
        size: ProductSize(value: 'L', system: ProductSizeSystem.alpha),
        colour: 'Black',
        stockQuantity: 3,
      ),
    ],
    collections: [officeEditCollection, newArrivalsCollection],
  ),

  // ==========================================================
  // 9. WOMEN - SNEAKERS
  // ==========================================================
  Product(
    id: 9,
    title: 'Cloud Street Sneaker',
    description:
        'Minimal everyday sneaker with a cushioned sole and clean upper.',
    price: 1099.99,
    salePrice: 899.99,
    imageUrl:
        'https://images.unsplash.com/photo-1491553895911-0055eca6402d'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.7,
    ratingCount: 269,
    brand: arcAndCoBrand,
    category: ProductCategory.footwear,
    productType: ProductType.sneakers,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.women,
    variants: [
      ProductVariantModel(
        id: 32,
        size: ProductSize(value: '4', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 4,
      ),
      ProductVariantModel(
        id: 33,
        size: ProductSize(value: '5', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 7,
      ),
      ProductVariantModel(
        id: 34,
        size: ProductSize(value: '6', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 9,
      ),
      ProductVariantModel(
        id: 35,
        size: ProductSize(value: '7', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 5,
      ),
    ],
    collections: [summerEditCollection, saleCollection],
  ),

  // ==========================================================
  // 10. KIDS - T-SHIRT
  // ==========================================================
  Product(
    id: 10,
    title: 'Mini Explorer T-Shirt',
    description: 'Soft cotton crew-neck T-shirt designed for everyday play.',
    price: 249.99,
    imageUrl:
        'https://images.unsplash.com/photo-1503944583220-79d8926ad5e2'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.8,
    ratingCount: 81,
    brand: littleOakBrand,
    category: ProductCategory.clothing,
    productType: ProductType.tshirt,
    productSeason: ProductSeason.summer,
    productDepartment: ProductDepartment.kids,
    variants: [
      ProductVariantModel(
        id: 36,
        size: ProductSize(value: '4-5', system: ProductSizeSystem.alpha),
        colour: 'Blue',
        stockQuantity: 8,
      ),
      ProductVariantModel(
        id: 37,
        size: ProductSize(value: '6-7', system: ProductSizeSystem.alpha),
        colour: 'Blue',
        stockQuantity: 10,
      ),
      ProductVariantModel(
        id: 38,
        size: ProductSize(value: '8-9', system: ProductSizeSystem.alpha),
        colour: 'Blue',
        stockQuantity: 5,
      ),
    ],
    collections: [kidsCollection, summerEditCollection],
  ),

  // ==========================================================
  // 11. KIDS - SNEAKERS
  // ==========================================================
  Product(
    id: 11,
    title: 'Mini Dash Sneakers',
    description:
        'Lightweight kids sneakers with a flexible sole for everyday activity.',
    price: 599.99,
    salePrice: 499.99,
    imageUrl:
        'https://images.unsplash.com/photo-1514989940723-e8e51635b782'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.6,
    ratingCount: 67,
    brand: littleOakBrand,
    category: ProductCategory.footwear,
    productType: ProductType.sneakers,
    productSeason: ProductSeason.allSeason,
    productDepartment: ProductDepartment.kids,
    variants: [
      ProductVariantModel(
        id: 39,
        size: ProductSize(value: '12', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 4,
      ),
      ProductVariantModel(
        id: 40,
        size: ProductSize(value: '13', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 6,
      ),
      ProductVariantModel(
        id: 41,
        size: ProductSize(value: '1', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 7,
      ),
      ProductVariantModel(
        id: 42,
        size: ProductSize(value: '2', system: ProductSizeSystem.uk),
        colour: 'White',
        stockQuantity: 3,
      ),
    ],
    collections: [kidsCollection, saleCollection],
  ),

  // ==========================================================
  // 12. WOMEN - SUMMER TOP
  // ==========================================================
  Product(
    id: 12,
    title: 'Ribbed Summer Top',
    description:
        'Fitted ribbed top with lightweight stretch fabric for warmer weather.',
    price: 349.99,
    imageUrl:
        'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc'
        '?auto=format&fit=crop&w=900&q=80',
    rating: 4.3,
    ratingCount: 119,
    brand: velaBrand,
    category: ProductCategory.clothing,
    productType: ProductType.shirt,
    productSeason: ProductSeason.summer,
    productDepartment: ProductDepartment.women,
    variants: [
      ProductVariantModel(
        id: 43,
        size: ProductSize(value: 'XS', system: ProductSizeSystem.alpha),
        colour: 'Cream',
        stockQuantity: 6,
      ),
      ProductVariantModel(
        id: 44,
        size: ProductSize(value: 'S', system: ProductSizeSystem.alpha),
        colour: 'Cream',
        stockQuantity: 9,
      ),
      ProductVariantModel(
        id: 45,
        size: ProductSize(value: 'M', system: ProductSizeSystem.alpha),
        colour: 'Cream',
        stockQuantity: 7,
      ),
      ProductVariantModel(
        id: 46,
        size: ProductSize(value: 'L', system: ProductSizeSystem.alpha),
        colour: 'Cream',
        stockQuantity: 4,
      ),
    ],
    collections: [summerEditCollection, newArrivalsCollection],
  ),
];
