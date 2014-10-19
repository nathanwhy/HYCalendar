//
//  ViewController.m
//  HYCalendar
//
//  Created by nathan on 14-9-27.
//  Copyright (c) 2014年 nathan. All rights reserved.
//

#import "ViewController.h"
#import "MyCalendarItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyCalendarItem *calendarView = [[MyCalendarItem alloc] init];
    calendarView.frame = CGRectMake(10, 50, 355, 300);
    [self.view addSubview:calendarView];
    
    calendarView.date = [NSDate date];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
