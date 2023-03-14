import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:honalondon_radio/consts/const.dart';
import 'package:honalondon_radio/controllers/radio_provider.dart';
import 'package:honalondon_radio/services/url_launcher_service.dart';
import 'package:honalondon_radio/views/home/widgets/event_slider_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: wColor, //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: nBlueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r),
                  ),
                ),
                accountName: Text(
                  '$honaLondon Radio',
                  style: myTS20(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      textColor: wColor),
                ),
                accountEmail: const Text(""),
                currentAccountPicture: Container(
                    width: 150.w,
                    height: 150.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Image.asset(
                      icappLogo,
                      fit: BoxFit.fill,
                    )),
              ),
              Center(
                child: Text(
                  "Find Us",
                  style: myTS20(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 30.sp,
                ),
                title: Text(
                  "FaceBook",
                  style: myTS20(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                  UrlLauncherService().launchUrl1(Uri.parse(
                      'https://www.facebook.com/profile.php?id=100090558244331&mibextid=ZbWKwL'));
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.instagram,
                  color: const Color(0xffC13584),
                  size: 30.sp,
                ),
                title: Text(
                  "Instagram",
                  style: myTS20(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                  UrlLauncherService().launchUrl1(Uri.parse(
                      'https://instagram.com/honalondonradio?igshid=YmMyMTA2M2Y='));
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                  size: 30.sp,
                ),
                title: Text(
                  "Twitter",
                  style: myTS20(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);

                  UrlLauncherService().launchUrl1(Uri.parse(
                      'https://twitter.com/honalondonradio?t=8SRnW41t0i6m4tuP632SjA&s=09'));
                },
              ),
              // ListTile(
              //   leading: Icon(
              //     FontAwesomeIcons.whatsapp,
              //     color: Colors.green,
              //     size: 30.sp,
              //   ),
              //   title: Text(
              //     "WhatsApp",
              //     style: myTS20(fontSize: 14.sp, fontWeight: FontWeight.w500),
              //   ),
              //   onTap: () {},
              // ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.wordpress,
                  color: Colors.blue,
                  size: 30.sp,
                ),
                title: Text(
                  "Website",
                  style: myTS20(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () async {
                  Navigator.pop(context);
                  UrlLauncherService().launchUrl1(
                      Uri.parse('http://www.honalondonradio.co.uk/'));
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.blue,
                  size: 30.sp,
                ),
                title: Text(
                  "Call",
                  style: myTS20(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                onTap: () async {
                  final Uri url = Uri(
                    scheme: 'tel',
                    path: "+447778417444",
                  );
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print("cannot launch this url");
                  }
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(p4bImag), fit: BoxFit.cover),
        ),
        child: Column(children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Icon(
                    Icons.menu_outlined,
                    color: wColor,
                    size: 30.sp,
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Row(
              children: [
                Text(
                  events,
                  style: GoogleFonts.inter(
                      color: wColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.normal),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/eS');
                  },
                  child: Text(
                    seeAll,
                    style: GoogleFonts.inter(
                        color: lGColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),

          // this section for slider
          Column(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: const [
                      EventSliderWidget(
                          img: p1pImag, tit: title, tit1: 'Event One'),
                      // slider second image/container
                      EventSliderWidget(
                          img: p5pImag, tit: title, tit1: 'Event Two'),
                      // slider third image/container
                      EventSliderWidget(
                          img: p3pImag, tit: title, tit1: 'Event Three'),
                      EventSliderWidget(
                          img: p4pImag, tit: title, tit1: 'Event Four'),
                      EventSliderWidget(
                          img: p2pImag, tit: title, tit1: 'Event Five'),
                      EventSliderWidget(
                          img: p6pImag, tit: title, tit1: 'Event Six'),
                      EventSliderWidget(
                          img: p7pImag, tit: title, tit1: 'Event Seven'),
                      EventSliderWidget(
                          img: p8pImag, tit: title, tit1: 'Event Eight'),
                    ],
                    options: CarouselOptions(
                      height: 165.h,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 2000),
                      viewportFraction: 0.8,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
          SizedBox(
            width: 388.w,
            height: 311.h,
            child: Image.asset(
              icappLogo,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 31.h,
          ),
          SizedBox(
            width: 391.w,
            height: 68.50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer<RadioProvider>(builder: (context, notifier, child) {
                  return InkWell(
                    onTap: () {
                      notifier.toggleAudio(
                          'https://listen.radioking.com/radio/558047/stream/617546');
                    },
                    child: notifier.state.isPlaying
                        ? SizedBox(
                            width: 50.w,
                            height: 50.h,
                            child: Image.asset(
                              icPauseButton,
                              width: 50.w,
                              height: 50.h,
                            ),
                          )
                        : SizedBox(
                            width: 50.w,
                            height: 50.h,
                            child: Image.asset(
                              icPlayButton,
                              width: 50.w,
                              height: 50.h,
                            ),
                          ),
                  );
                }),
                SizedBox(
                  width: 20.h,
                ),
                Consumer<RadioProvider>(
                  builder: (context, notifier, child) {
                    return SizedBox(
                      height: 30.h,
                      width: 150.w,
                      child: Slider(
                        activeColor: lGColor,
                        inactiveColor: wColor,
                        value: notifier.state.volume,
                        min: 0,
                        max: 1,
                        onChanged: (double value) {
                          notifier.setVolume(value);
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
