//
//  MainViewController.m
//  QiPai
//
//  Created by admin on 15/11/30.
//  Copyright © 2015年 huangshuimei. All rights reserved.
//

#import "MainViewController.h"
#import "SFIntroductionVC.h"
#import "AppDelegate.h"
@interface MainViewController () {
    UIViewController *introduceVC;
}
@end
@implementation MainViewController

- (void)viewDidLoad {
    self.title=@"练习";
    BOOL canShow= [SFIntroductionVC canShowIntroduce];
    canShow=YES;
    if (canShow) {
        [self showIntroduce];
        
    } else {
        [self enterLoginAndRegister];
    }
}

- (void)showIntroduce {
    NSArray *coverImageNames = @[@"img_index_01txt", @"img_index_02txt", @"img_index_03txt"];
    NSArray *backgroundImageNames = @[@"img_index_01bg", @"img_index_02bg", @"img_index_03bg"];
    introduceVC=  [SFIntroductionVC createWithWithCoverImages:coverImageNames backgroundImages:backgroundImageNames button:nil enterBlock:^{
        [introduceVC.view  removeFromSuperview];
        [self enterLoginAndRegister];
    }];
    [self.view addSubview:introduceVC.view];
}

- (void)enterLoginAndRegister {

}
@end
