//
//  BaseView.m
//  123
//
//  Created by rongdu on 15/6/19.
//  Copyright (c) 2015年 rongdu. All rights reserved.
//

#import "BaseView.h"
#import "AppDelegate.h"
@interface BaseView ()

@end

@implementation BaseView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *time=@"20150623111";
   
    NSString *time1=@"20150624111111122";
    NSString *time2=@"6227002510310258851";
    NSString *time3=@"220702199306085215";
    NSLog(@"nowtime1 =====%.6lld ",[time longLongValue]);
    NSLog(@"nowtime1 =====%lld ",[time1 longLongValue]);
    NSLog(@"nowtime2 =====%lld ",[time2 longLongValue]);
    NSLog(@"nowtime3 =====%lld ",[time3 longLongValue]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}
-(CGRect)setframeorignx:(int )orignx setframeorigny:(int )origny setframewith:(int )with  setframeoheight:(int )height
{
    AppDelegate *dele=[UIApplication sharedApplication].delegate;
    CGRect rect;
    rect.origin.x=dele.width*orignx;
    rect.origin.y=dele.width*origny;
    rect.size.width=dele.width*with;
    rect.size.height=dele.height*height;
    NSLog(@"=====22=====%@",NSStringFromCGRect(rect));
    return rect;

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
