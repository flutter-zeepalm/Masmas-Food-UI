// ignore_for_file: file_names

class PlaceMyOrder {
  String subTotal;
  String deliveryCharges;
  String discount;
  String total;
  PlaceMyOrder({
    required this.subTotal,
    required this.deliveryCharges,
    required this.discount,
    required this.total,
  });
}

List<PlaceMyOrder> placeOrderList = [
  PlaceMyOrder(
      subTotal: '120 \$',
      deliveryCharges: '10 \$',
      discount: '20 \$',
      total: '150\$'),
];
