# DLPanableWebView
Extend UIWebView to support pan left to go back gesture(like Wechat in-app browser).

In Safari, besides tap on 'back' and 'forward' button,  you can pan left & right to go back and forward.

But UIWebView does not support this gesture. So I extented UIWebView to support the gesture(now only go back gesture).

扩展了UIWebView，使其支持滑动手势返回（类似微信的In-App浏览器）。

Safari里面除了点击‘前进’，‘后退’按钮，还可以通过滑动手势来前进和后退。

可惜UIWebView不支持这个手势，所以我扩展了UIWebView使其支持滑动手势返回。

#Screenshot
![DLPanableWebView](images/demo.gif)

#Requirements
* IOS6.1 or later
* ARC

#Setup
* Add 'DLPanableWebView' to your project.
 * If you are using CocoaPods:
 
     Add ```pod 'DLPanableWebView'``` to your [Podfile](http://cocoapods.org/)
 
     Run ```pod install```
 * else
 
     Run ```git clone https://github.com/agdsdl/DLPanableWebView.git``` to download our code.
   
     Add 'DLPanableWebView.h' and 'DLPanableWebView.m' to your project.
* Add #import
```objc
#import "DLPanableWebView.h"
```
* Replace your 'UIWebView' to 'DLPanableWebView'.
```objc
@interface WebViewController ()
@property (weak, nonatomic) IBOutlet DLPanableWebView *webView;
@end
```
* That's it!

    Your web view now support pan back gesture.

#Delegate
[Optional]

When navigate to the root page, and can not go back any more, ```DLPanableWebView``` will pass pan gesture to ```DLPanableWebViewHandler```.

You can implement the ```DLPanableWebViewHandler``` protocol and handle the pan gesture if you want.
For example, you can pop your WebViewController if you detect an pan back gesture(Check the demo).


#License
--------------------
    The MIT License (MIT)
