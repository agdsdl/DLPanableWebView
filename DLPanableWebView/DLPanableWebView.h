//
//  DLPanableWebView.h
//  hybirdDemo
//
//  Created by Dongle Su on 15/6/18.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLPanableWebView;

@protocol DLPanableWebViewHandler <NSObject>
@optional
- (void)DLPanableWebView:(DLPanableWebView *)webView panPopGesture:(UIPanGestureRecognizer *)pan;
@end

@interface DLPanableWebView : UIWebView
@property(nonatomic, weak) IBOutlet id<DLPanableWebViewHandler> panDelegate;
@property(nonatomic, assign) BOOL enablePanGesture;
@end
