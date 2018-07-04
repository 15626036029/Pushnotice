//
//  AppDelegate.h
//  远程推送
//
//  Created by 毛织网 on 2018/7/3.
//  Copyright © 2018年 Cdy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
static NSString *appKey = @"";//申请应用成功以后官方会提供给你

static NSString *channel = @"App Store";

static BOOL isProduction = FALSE;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

