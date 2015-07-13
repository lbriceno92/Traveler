//
//  ViewController.h
//  traveler
//
//  Created by lbriceno on 7/3/15.
//  Copyright (c) 2015 lbriceno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCBarChartView.h"
@interface ViewController : UIViewController <MCBarChartViewDelegate,MCBarChartViewDataSource>
@property (weak, nonatomic) IBOutlet MCBarChartView *barchart;


@end

