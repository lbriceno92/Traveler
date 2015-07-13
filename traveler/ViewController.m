//
//  ViewController.m
//  traveler
//
//  Created by lbriceno on 7/3/15.
//  Copyright (c) 2015 lbriceno. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.barchart.delegate = self;
    self.barchart.dataSource = self;
    self.barchart.cornerRadiusPercentage = 0.2;
    self.barchart.interBarSpace = 50;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfBarsInBarChartView:(MCBarChartView *)barChartView{
    return 4;
}

- (CGFloat)barCharView:(MCBarChartView*)barChartView valueForBarAtIndex:(NSInteger)index{
    CGFloat distance = ( (float) index+1) * 0.2 ;
    return distance;
}

- (NSString*)barCharView:(MCBarChartView*)barChartView textForYAxisAtIndex:(NSInteger)index{
    NSString* title = @"empty";
    
    switch (index) {
        case 0:
            title = @"0.6241";
            break;
            
        case 1:
            title = @"0.8545";
            break;
            
        case 2:
            title = @"5.244";
            break;
            
        case 3:
            title = @"22.45454";
            break;
            
        default:
        break;
    }
    
    return title;
}

    
-(NSString*)barCharView:(MCBarChartView*)barChartView textForXAxisAtIndex:(NSInteger)index{
    NSString* title = @"empty";
    
    switch (index) {
        case 0:
            title = @"GBP";
            break;
            
        case 1:
            title = @"EUR";
            break;
            
        case 2:
            title = @"BLR";
            break;
            
        case 3:
            title = @"JPY";
            break;
            
        default:
            break;
    }
    
    return title;
}

@end
