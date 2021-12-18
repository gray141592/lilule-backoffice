import 'package:flutter/material.dart';

import 'components/transactions_list.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransactionsList();
  }
}