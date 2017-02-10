//
//  ARWebViewController.m
//  goTowatch
//
//  Created by XingJian on 2017/2/9.
//  Copyright © 2017年 XingJian. All rights reserved.
//

#import "ARWebViewController.h"

@interface ARWebViewController ()<UIWebViewDelegate>

@end

@implementation ARWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView =[[UIWebView alloc]initWithFrame:self.view.frame];
    webView.delegate = self;
    [self.view addSubview:webView];
     [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://127.0.0.1:8000/"]]];


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
