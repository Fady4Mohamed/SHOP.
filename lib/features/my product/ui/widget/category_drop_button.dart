
import 'package:flutter/material.dart';
import 'package:shop/core/theming/styles.dart';

class CategoryDropButton extends StatefulWidget {
  const CategoryDropButton({
    super.key,
  });

  @override
  State<CategoryDropButton> createState() => _CategoryDropButtonState();
}

class _CategoryDropButtonState extends State<CategoryDropButton> {
  String category='category';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
       
        value: category,
        onChanged: (String? newValue) {
          setState(() {
            category=newValue!;
          });
        },
        items:  [
          DropdownMenuItem<String>(
            value: 'category',
            child: Text('category',style: TextStyles.font16,),
          ),
          DropdownMenuItem<String>(
            value: 'Electronic',
            child: Text('Electronic',style: TextStyles.font16,),
          ),
          DropdownMenuItem<String>(
            value: 'kide',
            child: Text('kide',style: TextStyles.font16,),
          ),
          DropdownMenuItem<String>(
            value: 'Pets',
            child: Text('Pets',style: TextStyles.font16,),
          ),
          DropdownMenuItem<String>(
            value: 'Games',
            child: Text('Games',style: TextStyles.font16,),
          ),
          DropdownMenuItem<String>(
            value: 'Fashion',
            child: Text('Fashion',style: TextStyles.font16,),
          ),
        ]);
  }
}
