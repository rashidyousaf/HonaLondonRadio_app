import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

TextStyle myTS20(
    {fontSize = 20.0,
    Color textColor = blackColor,
    FontWeight fontWeight = FontWeight.w400}) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    color: textColor,
    fontWeight: fontWeight,
  );
}
