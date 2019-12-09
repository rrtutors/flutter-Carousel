import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'cource_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Carasole(),
    );
  }
}
class Carasole extends StatelessWidget{
  List<CourceData>dataList=CourceData.getList();
  List<CourceData>dataBanners=CourceData.getBanners();
  SwiperController _swiperController=SwiperController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(

      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 1, 221, 245),
        body: Column(
          children: <Widget>[
            Card(
              elevation: 10,margin: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

              child: Container(
                height: 180,
                child: Swiper(
                  itemWidth: 250,
                  controller: _swiperController,
                  outer: false,
                  itemBuilder: (c, i) {
                    if(dataBanners!=null){
                      return Container(
                        child: Image.asset(dataBanners[i].img,fit: BoxFit.cover,height: 120,),
                      );
                    }
                  },
                  pagination:
                  new SwiperPagination(builder: DotSwiperPaginationBuilder(activeColor: Colors.pink,size: 5,activeSize: 8,color: Colors.grey),
                      margin: new EdgeInsets.all(5.0)),
                  itemCount: dataBanners == null ? 0 : dataBanners.length,
                  layout: SwiperLayout.STACK,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                  itemBuilder: (ctx,index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        title: Text(dataList[index].name),
                        subtitle: Text("By Author"),
                        leading:Image.asset(dataList[index].img)
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }


}

