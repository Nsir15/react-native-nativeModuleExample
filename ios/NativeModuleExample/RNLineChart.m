//
//  RNLineChart.m
//  NativeModuleExample
//
//  Created by nx36950 on 2016/11/11.
//  Copyright © 2016年 nx36950. All rights reserved.
//

#import "RNLineChart.h"
#import "PNChart.h"
@implementation RNLineChart


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    PNLineChart * lineChart = [[PNLineChart alloc]initWithFrame:CGRectMake([_LineChartFrame[0] floatValue], [_LineChartFrame[1] floatValue], [_LineChartFrame[2] floatValue], [_LineChartFrame[3] floatValue])];
    [lineChart setXLabels:_xlabel];
    lineChart.showCoordinateAxis = YES;
    lineChart.showYGridLines = YES;
    lineChart.yGridLinesColor = [UIColor orangeColor];
    
    PNLineChartData * data = [PNLineChartData new];
    NSArray * dataArray = _lineValues;
    data.color = [UIColor blueColor];
    data.itemCount = lineChart.xLabels.count; // 不写这个图出不来
    data.inflexionPointStyle = PNLineChartPointStyleSquare;
    data.inflexionPointColor = [UIColor greenColor];
    data.getData = ^(NSUInteger index){
        CGFloat yValue = [dataArray[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    lineChart.chartData = @[data];
    [lineChart strokeChart];
    [self addSubview:lineChart];
}


@end
