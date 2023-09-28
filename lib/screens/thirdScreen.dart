

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';



class ThirdScreen extends StatefulWidget {
  final String lasttitle, lastdesc, lastimage;

  ThirdScreen({Key? key, required this.lasttitle, required this.lastdesc, required this.lastimage}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initBannerAd();
  }
  var adUnit = "ca-app-pub-1570709206699249/4972363375";
  late BannerAd _bannerAd;
  bool isLoaded = false;
  initBannerAd(){
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: adUnit,
        listener: BannerAdListener(
            onAdLoaded: (ad){
              setState(() {
                isLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error){
              ad.dispose();
              print(error);
            }
        ),
        request: AdRequest()
    );

    _bannerAd.load();
  }



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height *1;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink.shade800,
        title: Text(widget.lasttitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: height * 0.02,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.lasttitle,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.lastimage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: height * 0.04,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                textAlign:TextAlign.center,
                widget.lastdesc,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: isLoaded ? SizedBox(
        height: _bannerAd.size.height.toDouble(),
        width:_bannerAd.size.width.toDouble(),
        child: AdWidget(ad: _bannerAd),
      ) : const SizedBox(),
    );
  }
}
