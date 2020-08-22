
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackDropFilterList extends StatefulWidget {
  @override
  _BackDropFilterListState createState() => _BackDropFilterListState();
}

class _BackDropFilterListState extends State<BackDropFilterList> {
  String _currentFilter;
  Size _size;
  bool _expandList;
  List<int> _numberList;
  List<int> _filterList;
  ScrollController _scrollController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0);
    _fillList();
    _expandList = true;
    _currentFilter = "BackDropFilterList";
  }

  void _fillList(){
    _numberList = List<int>.generate(100, (index) => index);
    _filterList = _numberList;
  }

  void _filterByCase({String caseFilter}){
    List<int> response = [];
    switch(caseFilter) {
      case "Pares":
        response = _numberList.where((element) => element%2==0).toList();
        break;
      case "Impares":
        response = _numberList.where((element) => element%2!=0).toList();
        break;
      default:{
        response = _numberList;
      }
    }

    setState(() {
      _filterList = response;
      _expandList = !_expandList;
      _currentFilter = caseFilter == ""? "BackDropFilterList": caseFilter;
    });

  }


  @override
  Widget build(BuildContext context) {
    _size =  MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: Text(_currentFilter, style: TextStyle(fontSize: 20, color: Colors.white),),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(Icons.filter_list, color: Colors.white, size: 25,),
              onPressed: (){
                setState(() {
                  _expandList = !_expandList;
                });
                _scrollController.animateTo(
                  0.0,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300),
                );
              },
              splashRadius: 20,
              splashColor: Colors.black12,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                FlatButton(
                  onPressed: (){
                    _filterByCase(caseFilter: "");
                  },
                  child: Text("Todos"),
                ),

                FlatButton(
                  onPressed: (){
                    _filterByCase(caseFilter: "Pares");
                  },
                  child: Text("Pares"),
                ),

                FlatButton(
                  onPressed: (){
                    _filterByCase(caseFilter: "Impares");
                  },
                  child: Text("Impares"),
                )
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child:  Material(
              color: Colors.transparent,
              elevation: 20,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
              ),
              shadowColor: Colors.black54,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: double.infinity,
                height: !_expandList ? 70: _size.height-50,
                curve: Curves.fastOutSlowIn,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                  ),
                ),
                child: ListView.builder(
                  controller: _scrollController,
                    physics: _expandList ? AlwaysScrollableScrollPhysics():NeverScrollableScrollPhysics(),
                    itemCount: _filterList.length,
                    itemBuilder: (_, index){
                      return ListTile(
                        title: Text("item ${_filterList[index]}"),
                      );
                    }
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

