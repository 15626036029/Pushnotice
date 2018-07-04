//
//  ViewController.m
//  远程推送
//
//  Created by 毛织网 on 2018/7/3.
//  Copyright © 2018年 Cdy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(dealAllpayResult:) name:@"Tuisong" object:nil];
}
//监听APP进入前台后拿到的推送内容通知值
-(void)dealAllpayResult:(NSNotification*)notification{
    NSString*result=notification.object;
    NSArray *arr =[result componentsSeparatedByString:@","];
    NSString *string =[NSString stringWithFormat:@"key值:%@,推送内容:%@",arr[0],arr[1]];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"接收通知" message:string delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
