//
//  RNLineChartManager.m
//  NativeModuleExample
//
//  Created by nx36950 on 2016/11/11.
//  Copyright © 2016年 nx36950. All rights reserved.
//

#import "RNLineChartManager.h"
#import "RNLineChart.h"
@implementation RNLineChartManager
RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(LineChartFrame, NSArray)
RCT_EXPORT_VIEW_PROPERTY(xlabel, NSArray)
RCT_EXPORT_VIEW_PROPERTY(lineValues, NSArray)

- (UIView *)view
{
    RNLineChart * lineChart = [[RNLineChart alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    return lineChart;
}
@end
