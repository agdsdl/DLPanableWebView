//
//  ViewController.m
//  DLPanableWebViewDemo
//
//  Created by 苏东乐 on 15/6/29.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showWebViewController"]) {
        WebViewController *ctrl = [segue destinationViewController];
        ctrl.urlString = @"http://www.baidu.com";
    }
}

@end
