
import 'dart:math' as math;
import 'package:cliniccare/FAB2.dart';
import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

//const List<String> Units= const <String>[
//  'mg',
//  "g",
//  "mcg",
//  "iu",
//  "ml",
//  "pill(s)",
//  "tbsp",
//  "Units(s)",
//  "cups",
//  "tsp",
//  "L",
//  "lozenge(s)",
//  "syrup",
//  "drop(s)",
//  "spray(s)",
//  "injection",
//  "ointment",
//  "inhalation",
//];


class addMedPage extends StatefulWidget {

addMedPage():super();
  

  @override
  _addMedPageState createState() => _addMedPageState();
}

//class Units{
//  int id;
//  String name;
//
//
//  Units(this.id,this.name);
//
//  static List<Units> getUnits(){
//    return <Units>[
//      Units(1, 'mg'),
//      Units(2, "g"),
//      Units(3, "mcg"),
//      Units(4, "iu"),
//      Units(5, "ml"),
//      Units(6, "pill(s)"),
//       Units(7, "tbsp"),
//       Units(8, "Units(s)"),
//       Units(9, "cups"),
//       Units(10, "tsp"),
//       Units(11, "L"),
//       Units(12,"lozenge(s)"),
//       Units(13, "syrup"),
//       Units(14, "drop(s)"),
//       Units(15,"spray(s)"),
//       Units(16, "injection"),
//       Units(17, "ointment"),
//       Units(18,"inhalation"),
//    ];
//  }
//}



class _addMedPageState extends State<addMedPage>{

  String _date = "Choose your date";
  String _date1 = "Choose your date";
  String _time = "Choose your time";
  List<bool> isSelected = [false, false, false, false, false, false, false];
//  List<Units> _units =Units.getUnits();
//  List<DropdownMenuItem<Units>> _dropdownMenuItems;
//  Units _selectedUnits;


  void initState(){
//    _dropdownMenuItems= buildDropdownMenuItems(_units);
//    _selectedUnits = _dropdownMenuItems[0].value;
    super.initState();
  }

//  List<DropdownMenuItem<Units>> buildDropdownMenuItems(List units) {
//    List<DropdownMenuItem<Units>> items = List();
//    for (Units unit in units){
//      items.add(
//          DropdownMenuItem(
//            value: unit,
//            child: Text(unit.name),
//          ),
//      );
//    }
//    return items;
//  }

//  onChangeDropdownItem(Units selectedUnits) {
//    setState(() {
//      _selectedUnits = selectedUnits;
//    });
//  }
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return new Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FAB2(),
      floatingActionButtonLocation: _CustomStartTopFloatingActionButtonLocation(),
      appBar: MyAppbar(),
        body:SingleChildScrollView(
          reverse: false,

          //padding:const EdgeInsets.all(8.),
          child: new Stack(
            children: <Widget>[
              new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 60.0)),
                    new Form(
                      //key: formKey,
                      child: new Theme(
                        data:new ThemeData(
                            brightness: Brightness.dark,primarySwatch: Colors.teal,
                            inputDecorationTheme:new InputDecorationTheme(
                                labelStyle:new TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                )) ),
                        child: new Container(
                          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new TextFormField(
                                decoration: new InputDecoration(
                                    //labelText: "Email Address",
                                    hintText: "Your Medicine Name",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),

                                    ),
                                ),
                                keyboardType:TextInputType.text,
                              ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              new Stack(
                                children:[
                                Align(
                                  alignment: Alignment(-.99, 0),
                                  child: Container(
                                    width: 230.0,
                                    child: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: "Dose Quantity",
                                        border: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(15.0),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        enabledBorder: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(15.0),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      keyboardType:TextInputType.number,
                                    ),
                                  ),
                                ),
                                  //Padding(padding: EdgeInsets.only(left: 20.0)),
//                                Align(
//                                  alignment: Alignment(.99,0),
//                                  child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.end,
//                                    children: <Widget>[
//                                      RawMaterialButton(
//                                        fillColor: Colors.teal,
//                                        constraints: const BoxConstraints(minWidth: 100.0,minHeight: 60.0),
//                                        shape:RoundedRectangleBorder(
//                                          borderRadius: BorderRadius.circular(10.0),
//                                        ),
//                                        onPressed:(){
//                                          showModalBottomSheet(
//                                              context: context,
//                                              builder: (BuildContext context){
//                                                return Container(
//                                                  height: 200.0,
//                                                  child: CupertinoPicker(
//                                                    itemExtent: 30,
//                                                    onSelectedItemChanged: (int index){
//                                                      setState(() {
//                                                        _selectedIndex=index;
//                                                      });
//                                                      //Navigator.pop(context);
//                                                    },
//                                                    children: new List<Widget>.generate(Units.length, (int index) {
//                                                      return new Container(
//                                                        child: new Text(Units[index]),
//                                                      );
//                                                    }),
//                                                  ),
//                                                );
//                                              });
//                                      },
//                                        child: Text('Units'),
//                                  ),
////                                      Text(
////                                        '$Units[_selectedIndex]',
////                                        style: TextStyle(fontSize: 18.0),
////                                      ),
////                                      SizedBox(
////                                        height: 20.0,
////                                      ),
//                                    ],
//                                  ),
//
//                                ),
                                Align(
                                  alignment: Alignment(.95,.5),
                                  child:RaisedButton(
                                    child: Text("Units"),
                                    onPressed: (){
                                      final action =  CupertinoActionSheet(
                                          title: Text(
                                            "Dose Units",
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                          message: Text(
                                            "Select any unit",
                                            style: TextStyle(fontSize: 15.0),
                                          ),
//                                          onSelectedItemChanged: (int index){
//                                            print(index);
//                                          },
                                          actions: <Widget>[
                                            CupertinoActionSheetAction(
                                                child: Text('mg'),
                                            onPressed: (){
                                              Navigator.pop(context,"One");
                                            },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("g"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("mcg"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("iu"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("ml"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("pill(s)"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child:  Text("tbsp"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("cups"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("tsp"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("L"),
                                              onPressed: (){
                                                Navigator.pop(context,"One");
                                              },
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("lozenge(s)"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("syrup"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("drop(s)"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("spray(s)"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),
                                            CupertinoActionSheetAction(
                                              child: Text("injection"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),CupertinoActionSheetAction(
                                              child: Text("ointment"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),CupertinoActionSheetAction(
                                              child: Text("inhalation"),
                                              onPressed: (){Navigator.pop(context,"One");},
                                            ),
                                          ],
                                        cancelButton: CupertinoActionSheetAction(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      );
                                      showCupertinoModalPopup(
                                          context: context, builder: (context) => action);
                                    },
                                  )
                                ),
                                  //Text("Selected:${_selectedUnits.name}"),
                                ]
                              ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  new Text(
                                    "Start Date",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),),
                                ],
                              ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ButtonTheme(
                                    height: 60.0,
                                    minWidth: 370.0,
                                    child: RaisedButton(
                                      shape: (RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)
                                      )),
                                      elevation: 4.0,
                                      onPressed: (){
                                        DatePicker.showDatePicker(context,
                                        theme: DatePickerTheme(
                                          containerHeight: 315.0,
                                          itemStyle: const TextStyle(color: Colors.black),
                                          backgroundColor: Colors.white,
                                          headerColor: Colors.white,
                                          doneStyle: const TextStyle(color: Colors.blue),
                                          cancelStyle: const TextStyle(color: Colors.black),
                                        ),
                                          showTitleActions: true,
                                          minTime: DateTime(2000,1,1),
                                          maxTime: DateTime(2030,12,31), onConfirm: (date){
                                          print("Confirm $date");
                                          _date = '${date.year} - ${date.month} - ${date.day}';
                                          setState(() {});
                                          }, currentTime: DateTime.now(), locale : LocaleType.en);
                                        },
                                        child: Container(
                                         alignment: Alignment.center,
                                         height: 50.0,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: <Widget>[
                                             Row(
                                               children: [
                                                 Container(
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     children: [
                                                       Icon(
                                                         Icons.date_range,
                                                         size: 25.0,
                                                         color: Colors.white,

                                                       ),
                                                       Padding(padding: EdgeInsets.only(left: 20.0)),
                                                       Text(
                                                         "$_date",
                                                         style: TextStyle(
                                                           color: Colors.white,
                                                           //fontWeight: FontWeight.bold,
                                                           fontSize: 18.0,
                                                         ),
                                                       )
                                                     ],
                                                   ),
                                                 ),
                                               ],
                                             ),
                                             Padding(padding: EdgeInsets.only(left: 85.0)),
                                             Text(
                                               "Change",
                                                 style:TextStyle(
                                                   color:Colors.white,
                                                   fontSize: 18.0,
                                                 )
                                             )
                                           ],
                                         ),
                                        )),
                                  ),
                                ],
                              ),
//                            Padding(
//                                padding: const EdgeInsets.only(top: 10.0) ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  new Text(
                                    "End Date",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),),
                                ],
                              ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ButtonTheme(
                                    height: 60.0,
                                    minWidth: 370.0,
                                    child: RaisedButton(
                                        shape: (RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        )),
                                        elevation: 4.0,
                                        onPressed: (){
                                          DatePicker.showDatePicker(context,
                                                theme: DatePickerTheme(
                                                  containerHeight: 315.0,
                                                  itemStyle: const TextStyle(color: Colors.black),
                                                  backgroundColor: Colors.white,
                                                  headerColor: Colors.white,
                                                  doneStyle: const TextStyle(color: Colors.blue),
                                                  cancelStyle: const TextStyle(color: Colors.black),
                                              ),
                                              showTitleActions: true,
                                              minTime: DateTime(2000,1,1),
                                              maxTime: DateTime(2030,12,31), onConfirm: (date){
                                                print("Confirm $date");
                                                _date1 = '${date.year} - ${date.month} - ${date.day}';
                                                setState(() {});
                                              }, currentTime: DateTime.now(), locale : LocaleType.en);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 50.0,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(
                                                          Icons.date_range,
                                                          size: 25.0,
                                                          color: Colors.white,

                                                        ),
                                                        Padding(padding: EdgeInsets.only(left: 20.0)),
                                                        Text(
                                                          "$_date1",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            //fontWeight: FontWeight.bold,
                                                            fontSize: 18.0,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 85.0)),
                                              Text(
                                                  "Change",
                                                  style:TextStyle(
                                                    color:Colors.white,
                                                    fontSize: 18.0,
                                                  )
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10.0) ),
                              //new Padding(padding: EdgeInsets.only(top:10.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  new Text(
                                    "Reminder Time",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),),
                                ],
                              ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ButtonTheme(
                                    height: 60.0,
                                    minWidth: 370.0,
                                    child: RaisedButton(
                                        shape: (RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        )),
                                        elevation: 4.0,
                                        onPressed: (){
                                          DatePicker.showTimePicker(context,
                                              theme: DatePickerTheme(
                                                containerHeight: 315.0,
                                                itemStyle: const TextStyle(color: Colors.black),
                                                backgroundColor: Colors.white,
                                                headerColor: Colors.white,
                                                doneStyle: const TextStyle(color: Colors.blue),
                                                cancelStyle: const TextStyle(color: Colors.black),
                                              ),
                                              showTitleActions: true,
                                              onConfirm: (time){
                                                print("Confirm $time");
                                                _time = '${time.hour}:${time.minute}:${time.second}';
                                                setState(() {});
                                              }, currentTime: DateTime.now(), locale : LocaleType.en);
                                          setState(() {});
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 50.0,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(
                                                          Icons.access_time,
                                                          size: 25.0,
                                                          color: Colors.white,

                                                        ),
                                                        Padding(padding: EdgeInsets.only(left: 20.0)),
                                                        Text(
                                                          "$_time",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            //fontWeight: FontWeight.bold,
                                                            fontSize: 18.0,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 85.0)),
                                              Text(
                                                  "Change",
                                                  style:TextStyle(
                                                    color:Colors.white,
                                                    fontSize: 18.0,
                                                  )
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10.0) ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  new Text(
                                    "Reminder Days",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),),
                                ],
                              ),
                              new Padding(padding: EdgeInsets.only(top:10.0)),
                              ToggleButtons(
                                color:Colors.white,
                                //highlightColor: Colors.red,
                                selectedColor: Colors.teal,
                                splashColor: Colors.blueAccent,
                                borderColor: Colors.white,
                                borderWidth: 3,
                                selectedBorderColor: Colors.teal,
                                //renderBorder: true,
                                children: <Widget>[
                                  Text("M"),
                                  Text("T"),
                                  Text("W"),
                                  Text("T"),
                                  Text("F"),
                                  Text("S"),
                                  Text("S"),
                                ],
                                isSelected: isSelected,
                                onPressed: (int index){
                                  setState(() {
                                    isSelected[index] = !isSelected[index];
                                  });
                                },
                              ),
                              new Padding(padding: EdgeInsets.only(top:20.0)),
                              MaterialButton(
                                height: 50.0,
                                minWidth: 70.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.white10),
                                ),
                                color:Colors.teal,
                                textColor: Colors.white,
                                child: new Text("Submit"),
                                onPressed: (){},
                                splashColor: Colors.white70,
                              )
                            ])
                      )
                    )
                    )],
              ),

            ]
          ),
        ),
    );
  }
}

class customContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[


        ],
      ) ,
    );
  }
}


//////custom location FAB
double _endOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = -160.0 }) {
  assert(scaffoldGeometry.textDirection != null);
  switch (scaffoldGeometry.textDirection) {
    case TextDirection.rtl:
      return _leftOffset(scaffoldGeometry, offset: offset);
    case TextDirection.ltr:
      return _rightOffset(scaffoldGeometry, offset: offset);
  }
  return null;
}
double _leftOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
  return kFloatingActionButtonMargin
      + scaffoldGeometry.minInsets.left
      - offset;
}

double _rightOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
  return scaffoldGeometry.scaffoldSize.width
      - kFloatingActionButtonMargin
      - scaffoldGeometry.minInsets.right
      - scaffoldGeometry.floatingActionButtonSize.width
      + offset;
}

double _straddleAppBar(ScaffoldPrelayoutGeometry scaffoldGeometry) {
  final double fabHalfHeight = scaffoldGeometry.floatingActionButtonSize.height / 2.0;
  return scaffoldGeometry.contentTop - fabHalfHeight;
}


////////////////////////////CUSTOM FAB
class _CustomStartTopFloatingActionButtonLocation extends FloatingActionButtonLocation {
  const _CustomStartTopFloatingActionButtonLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(_endOffset(scaffoldGeometry), _straddleAppBar(scaffoldGeometry));
  }

  @override
  String toString() => 'FloatingActionButtonLocation.customstartTop';
}

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const MyAppbar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 26.0,
      color: Colors.teal,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.yellow,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: title,
      ),
    );
  }

  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}