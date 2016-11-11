//
//  RNBarChart.m
//  NativeModuleExample
//
//  Created by nx36950 on 2016/11/11.
//  Copyright © 2016年 nx36950. All rights reserved.
//

#import "RNBarChart.h"
#import "PNChart.h"
@implementation RNBarChart

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    PNBarChart * barChart = [[PNBarChart alloc]initWithFrame:CGRectMake([_barChartFrame[0] floatValue], [_barChartFrame[1] floatValue], [_barChartFrame[2] floatValue], [_barChartFrame[3] floatValue])];
    [barChart setXLabels:_xLabel];
    [barChart setYValues:_barData];
    [barChart strokeChart];
    [self addSubview:barChart];
}

@end
