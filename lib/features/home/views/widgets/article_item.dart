import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage('https://static01.nyt.com/images/2023/11/30/well/30Well-Protein-Age/30Well-Protein-Age-thumbStandard.jpg'),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The Children'),
              Text('By Mona Ahmed'),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.calendar_today),
                    Text('By Mona Ahmed'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
