//
//  RNBarChartManager.m
//  NativeModuleExample
//
//  Created by nx36950 on 2016/11/11.
//  Copyright © 2016年 nx36950. All rights reserved.
//

#import "RNBarChartManager.h"
#import "RNBarChart.h"
@implementation RNBarChartManager
RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(barChartFrame, NSArray)
RCT_EXPORT_VIEW_PROPERTY(xLabel, NSArray)
RCT_EXPORT_VIEW_PROPERTY(barData, NSArray)

- (UIView *)view
{
    RNBarChart * barChart = [[RNBarChart alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    barChart.backgroundColor = [UIColor clearColor]; // 防止渲染的时候后面会出现黑色背景
    return barChart;
}
@end
