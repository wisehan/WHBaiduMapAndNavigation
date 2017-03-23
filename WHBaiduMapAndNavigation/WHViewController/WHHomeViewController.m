//
//  WHHomeViewController.m
//  WHBaiduMapAndNavigation
//
//  Created by mac on 2017/3/23.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "WHHomeViewController.h"

@interface WHHomeViewController ()<BMKMapViewDelegate>

@property (nonatomic, assign) BMKMapView *mapView;

@end

@implementation WHHomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"HOME_Map";
    
    [self initAllView];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)initAllView{
//    [self.mapView setFrame:CGRectMake(0, 64, 375, 603)];
//    self.view = _mapView;
    
    BMKMapView* mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, 375, 603)];
    self.view = mapView;
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.mapView viewWillAppear];
    _mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self.mapView viewWillDisappear];
    _mapView.delegate = nil; // 不用时，置nil
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
