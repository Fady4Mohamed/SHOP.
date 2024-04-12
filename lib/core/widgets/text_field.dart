import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp(
      {super.key,
      this.isPassword = false,
      required this.icon,
      this.hintText,
      this.onChanged, this.onTap});
  final void Function(String)? onChanged;
  final String? hintText;
  final bool isPassword;
  final IconData icon;
  final void Function()? onTap;
  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  late bool tap;
  @override
  void initState() {
    tap = widget.isPassword;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: TextField(
        onTap:widget.onTap ,
        onChanged: widget.onChanged,
        style: TextStyle(
          color: Colors.white.withOpacity(.9),
        ),
        obscureText: tap,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    if (tap == true) {
                      tap = false;
                    }else{tap = true;}
                    
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye))
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Color(0xff111111),
                  )),
          fillColor: Color(0xff111111),
          filled: true,
          prefixIcon: Icon(
            widget.icon,
            color: Color.fromARGB(255, 56, 56, 56),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintMaxLines: 1,
          hintText: widget.hintText,
          hintStyle: TextStyles.font14greyregular,
        ),
      ),
    );
  }
}
