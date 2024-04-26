import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/features/my%20product/data/add%20cubit/add_cubit.dart';

class ChoiceImage extends StatefulWidget {
  const ChoiceImage({
    super.key,
  });


  @override
  State<ChoiceImage> createState() => _ChoiceImageState();
}

class _ChoiceImageState extends State<ChoiceImage> {
File? _file;

imagepick()async {
final ImagePicker picker = ImagePicker();
final XFile? image = await picker.pickImage(source: ImageSource.gallery);
if (image!=null) {
_file=File(image.path);
BlocProvider.of<AddCubit>(context).file=_file;
setState(() {
});
}
}
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _file!=null?Image.file(_file!,):SizedBox() ,ButtonApp(
          onPressed: () {
            imagepick();
          },
          titel: 'choice image',
        ),
      ],
    );
  }
}