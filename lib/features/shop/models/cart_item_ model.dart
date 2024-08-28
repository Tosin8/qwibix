class CartItemModel{
  String productId; 
  String title; 
  double price; 
  String? image; 
  String variationId; 
  String? brandName; 
  int quantity; 
  Map<String, String>? selectedVariation; 



// constructor. 
CartItemModel({
  required this.productId, 
  this.title = '', 
required this.quantity, 
  this.image,
  this.variationId = '',
    this.brandName, 
    this.selectedVariation, 
    this.price = 0.0,
    });

    // Empty Cart. 
    static CartItemModel empty() => CartItemModel( productId: '', quantity: 0); 

}