import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomSearchTextField(),
        SizedBox(height: 16,),
        Text('Search Result'),
        SizedBox(height: 16,),
        Expanded(child: SearchResultListView())
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          //  child: BestSellerListViewItem(),
          );
        });
  }
}
