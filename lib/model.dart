class ModelListMenu {
  final String title;
  final String img;

  ModelListMenu({required this.title, required this.img});
}

final layoutListMenu = [
  ModelListMenu(title: 'Cafe Latte', img: 'assets/foto.jpg'),
  ModelListMenu(title: 'Coldbrew', img: 'assets/foto.jpg'),
  ModelListMenu(title: 'Kopi Susu Gula Aren', img: 'assets/foto.jpg'),
  ModelListMenu(title: 'Asian Dolce Latte', img: 'assets/foto.jpg'),
  ModelListMenu(title: 'Salted Caramel', img: 'assets/foto.jpg'),
  ModelListMenu(title: 'Choco Cheese', img: 'assets/foto.jpg'),
  ModelListMenu(title: 'Pistachio Latte', img: 'assets/foto.jpg'),
];

// ^Model Full Menu
class ModelListFullMenu {
  final String title;
  final String price;
  final String img;

  ModelListFullMenu({
    required this.price,
    required this.title,
    required this.img,
  });
}

final layoutListFullMenu = [
  ModelListFullMenu(
    title: 'Cafe Latte',
    price: '8.000',
    img: 'assets/foto.jpg',
  ),
  ModelListFullMenu(title: 'Coldbrew', price: '8.000', img: 'assets/foto.jpg'),
  ModelListFullMenu(
    title: 'Kopi Susu Gula Aren',
    price: '12.000',
    img: 'assets/foto.jpg',
  ),
  ModelListFullMenu(
    title: 'Asian Dolce Latte',
    price: '13.000',
    img: 'assets/foto.jpg',
  ),
  ModelListFullMenu(
    title: 'Salted Caramel',
    price: '15.000',
    img: 'assets/foto.jpg',
  ),
  ModelListFullMenu(
    title: 'Choco Cheese',
    price: '13.000',
    img: 'assets/foto.jpg',
  ),
  ModelListFullMenu(
    title: 'Pistachio Latte',
    price: '16.000',
    img: 'assets/foto.jpg',
  ),
];

// ^Model Form
class ModelForm {
  final String label;

  ModelForm({required this.label});
}

final formIdentification = [
  ModelForm(label: 'Name*'),
  ModelForm(label: 'Nomor Hp*'),
  ModelForm(label: 'Email*'),
];

final formOcassion = [
  ModelForm(label: 'Acara*'),
  ModelForm(label: 'Tanggal*'),
  ModelForm(label: 'Waktu*'),
  ModelForm(label: 'Alamat*'),
];

// ^Model Card Shipmnet Method
class ModelCardForm {
  final String title;
  final String subtitle;
  final String info1;
  final String info2;

  ModelCardForm({
    required this.title,
    required this.subtitle,
    required this.info1,
    this.info2 = '',
  });
}

final operatorOnly = [
  ModelCardForm(
    title: 'Operator Only',
    subtitle: 'Only operator will be serving and no cart',
    info1: 'Table',
  ),
];

final chariot = [
  ModelCardForm(
    title: 'Chariot',
    subtitle: 'Our operator will bring the cart to fully experinced',
    info1: 'Space',
    info2: 'Table',
  ),
];

final privacyParty = [
  ModelCardForm(
    title: 'Privacy Party',
    subtitle: 'If you have privacy party and didn`t need our operator',
    info1: 'Courirer',
  ),
];

// ^ Model Card Detail Transcation
class ModelDetailTransaction {
  final String title;
  final String img;

  ModelDetailTransaction({required this.title, required this.img});
}

final layoutDetailTransaction = [
  ModelDetailTransaction(title: 'Cafe Latte', img: 'assets/foto.jpg'),
  ModelDetailTransaction(title: 'Coldbrew', img: 'assets/foto.jpg'),
  ModelDetailTransaction(title: 'Kopi Susu Gula Aren', img: 'assets/foto.jpg'),
  ModelDetailTransaction(title: 'Asian Dolce Latte', img: 'assets/foto.jpg'),
  ModelDetailTransaction(title: 'Salted Caramel', img: 'assets/foto.jpg'),
  ModelDetailTransaction(title: 'Choco Cheese', img: 'assets/foto.jpg'),
  ModelDetailTransaction(title: 'Pistachio Latte', img: 'assets/foto.jpg'),
];

// ^ Model Reorder
class ModelReOrder {
  final String title;
  final String img;

  ModelReOrder({required this.title, required this.img});
}

final layoutReorder = [
  ModelReOrder(title: 'Cafe Latte', img: 'assets/foto.jpg'),
  ModelReOrder(title: 'Coldbrew', img: 'assets/foto.jpg'),
  ModelReOrder(title: 'Kopi Susu Gula Aren', img: 'assets/foto.jpg'),
  ModelReOrder(title: 'Asian Dolce Latte', img: 'assets/foto.jpg'),
  ModelReOrder(title: 'Salted Caramel', img: 'assets/foto.jpg'),
  ModelReOrder(title: 'Choco Cheese', img: 'assets/foto.jpg'),
  ModelReOrder(title: 'Pistachio Latte', img: 'assets/foto.jpg'),
];

// ^ Model Card Detail Transcation
class ModelReview {
  final String img;
  final String title;
  final String rate;

  ModelReview({required this.title, required this.img, required this.rate});
}

final layoutReview = [
  ModelReview(title: 'Cafe Latte', img: 'assets/foto.jpg', rate: '4.7'),
  ModelReview(title: 'Coldbrew', img: 'assets/foto.jpg', rate: '4.6'),
  ModelReview(
    title: 'Kopi Susu Gula Aren',
    img: 'assets/foto.jpg',
    rate: '3.5',
  ),
  ModelReview(title: 'Asian Dolce Latte', img: 'assets/foto.jpg', rate: '6.7'),
  ModelReview(title: 'Salted Caramel', img: 'assets/foto.jpg', rate: '2.3'),
  ModelReview(title: 'Choco Cheese', img: 'assets/foto.jpg', rate: '1111'),
  ModelReview(title: 'Pistachio Latte', img: 'assets/foto.jpg', rate: '21'),
];

// ^Model Cart
class ModelCart {
  final String title;
  final String qty;
  final String price;

  ModelCart({required this.title, required this.qty, required this.price});
}

final layoutCart = [
  ModelCart(title: 'Kopi Susu Gula Aren', qty: 'x2', price: 'Rp. 12.0000'),
  ModelCart(title: 'Asian Dolce Latte', qty: 'x1', price: 'Rp. 13.0000'),
  ModelCart(title: 'Cold Brew', qty: 'x5', price: 'Rp. 15.0000'),
];

// ^Model Recipt
class ModelRecipt {
  final String title;
  final String qty;
  final String price;
  final String note;

  ModelRecipt({
    required this.title,
    required this.qty,
    required this.price,
    required this.note,
  });
}

final layoutRecipt = [
  ModelRecipt(
    title: 'Kopi Susu Gula Aren',
    qty: 'x2',
    price: 'Rp. 12.0000',
    note: 'Mas jangan pake gelas',
  ),
  ModelRecipt(
    title: 'Asian Dolce Latte',
    qty: 'x1',
    price: 'Rp. 13.0000',
    note: 'Saya beli es batunya aja',
  ),
  ModelRecipt(
    title: 'Cold Brew',
    qty: 'x5',
    price: 'Rp. 15.0000',
    note: 'ngggak usah pake kop, gelasnya aja',
  ),
];
