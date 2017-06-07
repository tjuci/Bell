//
//  DetailViewController.m
//  Bell
//
//  Created by Andrew-mac on 2017/5/31.
//  Copyright © 2017年 SITRI. All rights reserved.
//

#import "DetailViewController.h"
#import <HWWeakTimer/HWWeakTimer.h>
#import <FDFullscreenPopGesture/UINavigationController+FDFullscreenPopGesture.h>
#import <WebKit/WebKit.h>

@interface DetailViewController ()
@property (nonatomic) NSTimer *timer;
@property (nonatomic) WKWebView *webView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.timer = [HWWeakTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
//    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
    self.webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.webView];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://github.com/github"]]];
    [self.webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
//    [self.timer invalidate];
}

- (void)dealloc {
    DDLogDebug(@"%@ dealloc",_timer);
    [self.webView removeObserver:self forKeyPath:@"estimatedProgress"];
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"estimatedProgress"]) {
        NSLog(@"%@:%lf ======== \n%@",change,self.webView.estimatedProgress,self.webView.backForwardList.backList);
    }
}

- (void)timerAction {
    DDLogDebug(@"%@ log",@"timer action");
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
