//
//  ViewController.m
//  Bell
//
//  Created by Andrew-mac on 2017/5/25.
//  Copyright © 2017年 SITRI. All rights reserved.
//

#import "ViewController.h"
#import <TBActionSheet/TBActionSheet.h>
#import <TBActionSheet/TBMacro.h>
#import <VBFPopFlatButton/VBFPopFlatButton.h>
#import <FDFullscreenPopGesture/UINavigationController+FDFullscreenPopGesture.h>


@interface ViewController ()<TBActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DDLogDebug(@"%@ log", [self class]);
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)popButtonAction:(VBFPopFlatButton *)sender {
    if (sender.currentButtonType == buttonBackType) {
        [sender animateToType:buttonMenuType];
    } else {
        [sender animateToType:buttonBackType];
    }
}

- (IBAction)buttonAction:(id)sender {
    //test vbpopbutton
//    VBFPopFlatButton *button = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30) buttonType:buttonMenuType buttonStyle:buttonPlainStyle animateToInitialState:NO];
//    button.roundBackgroundColor = [UIColor lightGrayColor];
//    [button setTintColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    [self.view addSubview:button];
//    button.center = self.view.center;
//    
//    [button addTarget:self action:@selector(popButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //test tbactionsheet
//    TBActionSheet *acSheet = [[TBActionSheet alloc]initWithTitle:nil message:@"Test Message" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"退出登录" otherButtonTitles:nil, nil];
//    acSheet.sheetWidth = MIN(kScreenWidth, kScreenHeight);
//    acSheet.backgroundTransparentEnabled = NO;
//    acSheet.offsetY = 0;
//    acSheet.separatorColor = [UIColor groupTableViewBackgroundColor];
//    acSheet.blurEffectEnabled = YES;
//    acSheet.rectCornerRadius = 0;
//    [acSheet show];
}

@end
