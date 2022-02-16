import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/models/cart.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(32),
              child: _CartList(),
            ))
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.headline6;
    var cart = context.watch<CartModel>();
    return Container();
  }
}
