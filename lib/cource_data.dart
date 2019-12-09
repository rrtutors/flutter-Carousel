class CourceData{
  CourceData(this.name,this.img){

  }

  String name;
  String img;

  static getList()
  {
    List<CourceData>listCource=List();
    listCource.add(CourceData("BootStrap", "assets/course_bootstrap.png"));
    listCource.add(CourceData("ADO .Net", "assets/course_ado.net.png"));
    listCource.add(CourceData("Angular JS", "assets/course_angular.png"));
    listCource.add(CourceData(".Net", "assets/course_.net.png"));
    listCource.add(CourceData("Swift", "assets/course_swift.png"));
    listCource.add(CourceData("BootStrap", "assets/course_bootstrap.png"));
    listCource.add(CourceData("ADO .Net", "assets/course_ado.net.png"));
    listCource.add(CourceData("Angular JS", "assets/course_angular.png"));
    listCource.add(CourceData(".Net", "assets/course_.net.png"));
    listCource.add(CourceData("Swift", "assets/course_swift.png"));
    listCource.shuffle();
    return listCource;
  }
  static getBanners()
  {
    List<CourceData>listCource=List();
    listCource.add(CourceData("One", "assets/a.jpg"));
    listCource.add(CourceData("Two", "assets/b.jpg"));
    listCource.add(CourceData("Three", "assets/3.jpg"));
    listCource.add(CourceData("Four", "assets/4.jpg"));
    return listCource;
  }
}