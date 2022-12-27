import 'package:flutter/foundation.dart';

import '../modal/modal_screen.dart';

class HomeProvider extends ChangeNotifier
{
  List<getdata> NewsData = [
    getdata(link: "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en",name: "google news"),
    getdata(link: "https://www.gujaratsamachar.com/",name: "gujarat samachar"),
    getdata(link: "https://www.divyabhaskar.co.in/",name: "divyabhaskar"),
    getdata(link: "",name: "times of india"),
    getdata(link: "https://www.bbc.com/news",name: "bbc"),
    getdata(link: "https://www.ndtv.com/",name: "ndtv"),
    getdata(link: "https://m.dailyhunt.in/news/india/english/for+you?launch=true&mode=pwa",name: "daily hunt"),
    getdata(link: "https://abcnews.go.com/",name: "abc news"),
    getdata(link: "https://www.nytimes.com/",name: "newyork time"),
    getdata(link: "https://www.nbcnews.com/",name: "nbc news"),
    getdata(link: "https://www.cbsnews.com/",name: "cbs news"),
    getdata(link: "https://www.thehindu.com/",name: "the hindu"),
    getdata(link: "https://www.news18.com/",name: "news 18"),
    getdata(link: "https://www.business-standard.com/",name: "busiuness standard"),
    getdata(link: "https://www.dnaindia.com/",name: "dna"),
    getdata(link: "https://www.jagran.com/",name: "jagran"),
    getdata(link: "https://news.sky.com/",name: "sky news"),
  ];

}



