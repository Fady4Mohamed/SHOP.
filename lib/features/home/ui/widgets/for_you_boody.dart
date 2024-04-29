import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/home/data/fetch%20home%20product/fetch_home_product_cubit.dart';
import 'package:shop/features/home/ui/widgets/product_home_list.dart';

class ForYouBoody extends StatelessWidget {
  const ForYouBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h, top: 20.h, bottom: 12.h),
          child: Text(
            'For You',
            style: TextStyles.font18simebolde,
          ),
        ),
        BlocBuilder<FetchHomeProductCubit, FetchHomeProductState>(
          builder: (context, state) {
            if (state is FetchHomeProductSuccess) {
              return ProductHomelist(
                productlist:
                    BlocProvider.of<FetchHomeProductCubit>(context).products,
              );
            }
            if (state is FetchHomeProductFailure) {
              return SizedBox(
                  height: 210.h, child: Center(child: Text('erorr')));
            } else {
              return SizedBox(
                  height: 210.h, child: Center(child: Text('erorr')));
            }
          },
        )
      ],
    );
  }
}
