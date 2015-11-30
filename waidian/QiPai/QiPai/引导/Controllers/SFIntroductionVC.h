//
//  SFIntroductionVC.h
//
//  Created by stevenhu on 15/11/30.
//  Copyright (c) 2015年 stevenhu. All rights reserved.
//

#import "BaseViewController.h"
#import "UIView+Masony.h"
#import "UIApplication+Extend.h"
#import "CoreArchive.h"
typedef void (^DidSelectedEnter)();
extern NSString * const NewFeatureVersionKey;

@interface SFIntroductionVC : BaseViewController

@property (nonatomic, strong) UIScrollView *pagingScrollView;
@property (nonatomic, strong) UIButton *enterButton;

@property (nonatomic, copy) DidSelectedEnter didSelectedEnter;
@property (nonatomic,copy) void(^enterBlock)();
/**
 @[@"image1", @"image2"]
 */
@property (nonatomic, strong) NSArray *backgroundImageNames;

/**
 @[@"coverImage1", @"coverImage2"]
 */
@property (nonatomic, strong) NSArray *coverImageNames;

/*
 *  显示了版本新特性，保存版本号
 */
-(void)saveVersion;
/*
 *  是否应该显示版本新特性界面
 */
+(BOOL)canShowIntroduce;


+( UIViewController*)createWithWithCoverImages:(NSArray*)coverImages backgroundImages:(NSArray* )bgImages button:(UIButton*)button enterBlock:(void(^)())enterBlock;
+( UIViewController*)createWithWithCoverImages:(NSArray*)coverImages backgroundImages:(NSArray* )bgImages enterBlock:(void(^)())enterBlock;

@end
