//
//  ViewController.m
//  HYCalendar
//
//  Created by nathan on 14-9-27.
//  Copyright (c) 2014年 nathan. All rights reserved.
//

#import "ViewController.h"
#import "HYCalendarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    // demo1
    HYCalendarView *calendarView = [[HYCalendarView alloc] init];
    calendarView.frame = CGRectMake(10, 30, size.width-20, 200);
    [self.view addSubview:calendarView];
    
    calendarView.date = [NSDate date];
    calendarView.calendarBlock =  ^(NSInteger day, NSInteger month, NSInteger year){
        
        NSLog(@"%li-%li-%li", year,month,day);
    };
    
    // demo2
    HYCalendarView *calendarView2 = [[HYCalendarView alloc] init];
    calendarView2.frame = CGRectMake(10, 230, size.width-20, 200);
    [self.view addSubview:calendarView2];
    
    calendarView2.date = [HYCalendarTool nextMonth:[NSDate date]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
