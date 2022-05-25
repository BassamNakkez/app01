import 'package:flutter/material.dart';

Widget defulltButton (
{
  double width = 310,
  double height = 60,
  Color background = Colors.purple,
  required  Function function,
  required String text,
  double fontSize = 20,
  double radius = 20,
})
=> Container(

  width: width,
  decoration: BoxDecoration(
    color: background ,
    borderRadius: BorderRadius.circular(radius),
  ),
  height: height,
  child: MaterialButton(
    onPressed: function(),
    child:  Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,

      ),
    ),
  ),
);

Widget defulltTextFormField({
  required TextInputType keyboardType,
  bool isPassword = false,
  required TextEditingController controller,
  required String labelText,
  required IconData prefixIcon,
  required String? Function(String?)? validate,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
})=>TextFormField(
  controller: controller,
  keyboardType: keyboardType,
  obscureText: isPassword,
  validator: validate,
  decoration:  InputDecoration(
    border: const OutlineInputBorder(),
    labelText: labelText,
    prefixIcon: Icon(
      prefixIcon,
    ),

  ),
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
);


Widget defulltFloatingActionButton()=>FloatingActionButton(onPressed: ()
{
  var boardController;
  boardController.nextPage(
      duration: const Duration(
        seconds:2,
      ) ,
      curve: Curves.fastLinearToSlowEaseIn );
},
  child : const Icon(
    Icons.arrow_forward_ios,
  ),
);

