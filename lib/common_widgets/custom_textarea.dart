import '../consts/const.dart';

class CustomTextarea extends StatelessWidget {
  const CustomTextarea({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // any number you need (It works as the rows for the textarea)
      keyboardType: TextInputType.multiline,
      maxLines: null,
    );
  }
}
