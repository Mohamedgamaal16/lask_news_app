import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/data/explore_single_item_model.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/presention/widgets/single_item_display_body.dart';

class ExpolreSingleItemDisplay extends StatelessWidget {
  const ExpolreSingleItemDisplay({
    super.key,
    required this.exploreSingleItemModel,
  });

  final ExploreSingleItemModel exploreSingleItemModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.black, child: const Text('Back')),
      ),
      body: ExpolreSingleItemDiplayBody(
        exploreSingleItemModel: exploreSingleItemModel,
      ),
    ));
  }
}
