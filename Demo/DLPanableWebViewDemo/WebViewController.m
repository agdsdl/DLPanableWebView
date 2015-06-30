//
//  WebViewController.m
//  DLPanableWebViewDemo
//
//  Created by 苏东乐 on 15/6/29.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import "WebViewController.h"

#import "DLPanableWebView.h"

#define IS_IPHONE_6_PLUS [UIScreen mainScreen].scale == 3
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)


@interface WebViewController ()
@property (weak, nonatomic) IBOutlet DLPanableWebView *webView;
@end

@implementation WebViewController{
    id navPanTarget_;
    SEL navPanAction_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取系统默认手势Handler并保存
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        NSMutableArray *gestureTargets = [self.navigationController.interactivePopGestureRecognizer valueForKey:@"_targets"];
        id gestureTarget = [gestureTargets firstObject];
        navPanTarget_ = [gestureTarget valueForKey:@"_target"];
        navPanAction_ = NSSelectorFromString(@"handleNavigationTransition:");
    }

    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)DLPanableWebView:(DLPanableWebView *)webView panPopGesture:(UIPanGestureRecognizer *)pan{
    if (navPanTarget_ && [navPanTarget_ respondsToSelector:navPanAction_]) {
        [navPanTarget_ performSelector:navPanAction_ withObject:pan];
    }
}

@end
