# DLPanableWebView
Extend UIWebView to support pan left to go back gesture.(like Wechat in-app browser)

#Screenshot
![DLPanableWebView](images/demo.gif)

#Setup
* Add 'DLPanableWebView.h' and 'DLPanableWebView.m' to your project.
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

#Delegate
You can implement the 'DLPanableWebViewHandler' protocol and set 'panDelegate' to it.

#License
--------------------
    The MIT License (MIT)
