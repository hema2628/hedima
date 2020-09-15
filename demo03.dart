// parameters pass

import 'package:flutter/material.dart';

class Product{
  final String title;
  final String description;
  Product(this.title,this.description);
}

void main(){
  runApp(MaterialApp(
    title: 'navigator data pass and get',
    home: ProductList(
      products:List.generate(20, (index) => Product('goods $index','this is a good detail, code $index'))
    ),
  ));
}


class ProductList extends StatelessWidget {

  final List<Product> products;
  ProductList({Key key,@required this.products}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('good list')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>ProductDetail(product:products[index])
              )
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {

  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}'),),
      body: Center(child: Text('${product.description}'),),
    );
  }
}
