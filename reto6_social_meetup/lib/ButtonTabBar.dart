import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class buttonTabBar extends StatefulWidget {


  ScrollController scrollController;
  Axis scrollDirection;
  int itemsCount;
  List keyButton;
  List<IconData> icons;
  List description;
  // this will control the animation when a button changes from an off state to an on state
  AnimationController animationControllerOn;

  // this will control the animation when a button changes from an on state to an off state
  AnimationController animationControllerOff;

  List<Color> backgroundOn_Off;
  List<Color> foregroundOn_Off;

  TabController controller;
  double heightAppBar;


  buttonTabBar({Key key,
    this.heightAppBar,
    this.scrollController,
    this.scrollDirection,
    this.description,
    this.itemsCount,
    this.icons,
    this.keyButton,
    this.animationControllerOn,
    this.animationControllerOff,
    this.backgroundOn_Off,
    this.foregroundOn_Off,
    this.controller

  }): super(key: key);



  @override
  _buttonTabBarState createState() => _buttonTabBarState();
}

class _buttonTabBarState extends State<buttonTabBar> {


  // this will give the background color values of a button when it changes to an on state
  Animation colorTweenBackgroundOn;
  Animation colorTweenBackgroundOff;

  // this will give the foreground color values of a button when it changes to an on state
  Animation colorTweenForegroundOn;
  Animation colorTweenForegroundOff;

  // when swiping, the _controller.index value only changes after the animation, therefore, we need this to trigger the animations and save the current index
  int _currentIndex = 0;

  // saves the previous active tab
  int _prevControllerIndex = 0;

  // saves the value of the tab animation. For example, if one is between the 1st and the 2nd tab, this value will be 0.5
  double _aniValue = 0.0;

  // saves the previous value of the tab animation. It's used to figure the direction of the animation
  double _prevAniValue = 0.0;

  // regist if the the button was tapped
  bool _buttonTap = false;




  @override
  Widget build(BuildContext context) {

    // this will execute the function every time there's a swipe animation
    widget.controller.animation.addListener(_handleTabAnimation);
    // this will execute the function every time the _controller.index value changes
    widget.controller.addListener(_handleTabChange);

    colorTweenBackgroundOn =
        ColorTween(begin: widget.backgroundOn_Off[1], end: widget.backgroundOn_Off[0])
            .animate(widget.animationControllerOn);
    colorTweenForegroundOn =
        ColorTween(begin: widget.foregroundOn_Off[1], end:  widget.foregroundOn_Off[0])
            .animate(widget.animationControllerOn);



    colorTweenBackgroundOff =
        ColorTween(begin: widget.backgroundOn_Off[0], end: widget.backgroundOn_Off[1])
            .animate(widget.animationControllerOff);
    colorTweenForegroundOff =
        ColorTween(begin: widget.foregroundOn_Off[0], end: widget.foregroundOn_Off[1])
            .animate(widget.animationControllerOff);

    return Container(
      padding: EdgeInsets.only(left: 50),
      height: widget.heightAppBar,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
          ),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 1, blurRadius: 2)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0),
            child: ListView.builder(
            // this gives the TabBar a bounce effect when scrolling farther than it's size
            physics: BouncingScrollPhysics(),
            controller: widget.scrollController,
            // make the list horizontal
            scrollDirection: widget.scrollDirection,
            // number of tabs
            itemCount: widget.itemsCount,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                // each button's key
                  key: widget.keyButton[index],
                  // padding for the buttons
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15),
                  child: AnimatedBuilder(
                    animation: colorTweenBackgroundOn,
                    builder: (context, child) => GestureDetector(
                      onTap: (){

                          setState(() {
                            _buttonTap = true;
                            // trigger the controller to change between Tab Views
                            widget.controller.animateTo(index);
                            // set the current index
                            _setCurrentIndex(index);
                            // scroll to the tapped button (needed if we tap the active button and it's not on its position)
                            _scrollTo(index);
                          });
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: _getBackgroundColor(index), width: 2)
                            ),
                            child: Center(
                                child: Icon(
                                  // get the icon
                                  widget.icons[index],
                                  // get the color of the icon (dependent of its state)
                                  color: _getForegroundColor(index),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5),
                            child: widget.description.length ==0 ? Text(""): Text(
                              widget.description[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color:  _getForegroundColor(index)
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                  ));
            }),
          ),
    );
  }

  // runs during the switching tabs animation
  _handleTabAnimation() {
    // gets the value of the animation. For example, if one is between the 1st and the 2nd tab, this value will be 0.5
    _aniValue = widget.controller.animation.value;

    // if the button wasn't pressed, which means the user is swiping, and the amount swipped is less than 1 (this means that we're swiping through neighbor Tab Views)
    if (!_buttonTap && ((_aniValue - _prevAniValue).abs() < 1)) {
      // set the current tab index
      _setCurrentIndex(_aniValue.round());
    }

    // save the previous Animation Value
    _prevAniValue = _aniValue;
  }

  // runs when the displayed tab changes
  _handleTabChange() {
    // if a button was tapped, change the current index
    if (_buttonTap) _setCurrentIndex(widget.controller.index);

    // this resets the button tap
    if ((widget.controller.index == _prevControllerIndex) ||
        (widget.controller.index == _aniValue.round())) _buttonTap = false;

    // save the previous controller index
    _prevControllerIndex = widget.controller.index;
  }


  _setCurrentIndex(int index) {


    // if we're actually changing the index
    if (index != _currentIndex) {
      setState(() {
        // change the index
        _currentIndex = index;
      });

      // trigger the button animation
      _triggerAnimation();
      // scroll the TabBar to the correct position (if we have a scrollable bar)
      _scrollTo(index);
    }


  }


  _scrollTo(int index) {
    // get the screen width. This is used to check if we have an element off screen
    double screenWidth = MediaQuery.of(context).size.width;

    // get the button we want to scroll to
    RenderBox renderBox = widget.keyButton[index].currentContext.findRenderObject();
    // get its size
    double size = renderBox.size.width;
    // and position
    double position = renderBox.localToGlobal(Offset.zero).dx;

    // this is how much the button is away from the center of the screen and how much we must scroll to get it into place
    double offset = (position + size / 2) - screenWidth / 2;

    // if the button is to the left of the middle
    if (offset < 0) {
      // get the first button
      renderBox = widget.keyButton[0].currentContext.findRenderObject();
      // get the position of the first button of the TabBar
      position = renderBox.localToGlobal(Offset.infinite).dx;

      // if the offset pulls the first button away from the left side, we limit that movement so the first button is stuck to the left side
      if (position > offset) offset = position;
    } else {
      // if the button is to the right of the middle

      // get the last button
      renderBox = widget.keyButton[widget.icons.length - 1].currentContext.findRenderObject();
      // get its position
      position = renderBox.localToGlobal(Offset.zero).dx;
      // and size
      size = renderBox.size.width;

      // if the last button doesn't reach the right side, use it's right side as the limit of the screen for the TabBar
      if (position + size < screenWidth) screenWidth = position + size;

      // if the offset pulls the last button away from the right side limit, we reduce that movement so the last button is stuck to the right side limit
      if (position + size - offset < screenWidth) {
        offset = position + size - screenWidth;
      }
    }

    // scroll the calculated ammount
    widget.scrollController.animateTo(offset + widget.scrollController.offset,
        duration: new Duration(milliseconds: 150), curve: Curves.easeInOut);
  }

  _triggerAnimation() {
    // reset the animations so they're ready to go
    widget.animationControllerOn.reset();
    widget.animationControllerOff.reset();

    // run the animations!
    widget.animationControllerOn.forward();
    widget.animationControllerOff.forward();
  }

  _getBackgroundColor(int index) {
    if (index == _currentIndex) {
      // if it's active button
      return colorTweenBackgroundOn.value;
    } else if (index == _prevControllerIndex) {
      // if it's the previous active button
      return colorTweenBackgroundOff.value;
    } else {
      // if the button is inactive
      return widget.backgroundOn_Off[1];
    }
  }

  _getForegroundColor(int index) {
    // the same as the above
    if (index == _currentIndex) {
      return colorTweenForegroundOn.value;
    } else if (index == _prevControllerIndex) {
      return colorTweenForegroundOff.value;
    } else {
      return widget.foregroundOn_Off[1];
    }
  }
}
