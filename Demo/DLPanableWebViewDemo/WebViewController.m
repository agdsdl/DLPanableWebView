//
//  WebViewController.m
//  DLPanableWebViewDemo
//
//  Created by 苏东乐 on 15/6/29.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import "WebViewController.h"

#import "DLPanableWebView.h"

@interface WebViewController ()
@property (weak, nonatomic) IBOutlet DLPanableWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
