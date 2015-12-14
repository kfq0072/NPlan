//
//  NearbySchoolViewController.m
//  QiPai
//
//  Created by huangshuimei on 12/14/15.
//  Copyright © 2015 huangshuimei. All rights reserved.
//

#import "NearbySchoolViewController.h"
#import <MAMapKit/MAMapKit.h>
@interface NearbySchoolViewController ()<MAMapViewDelegate>
{
    MAMapView *_mapView;
}

@end

@implementation NearbySchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    _mapView.delegate = self;
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = 1;
    
    [self.view addSubview:_mapView];

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
