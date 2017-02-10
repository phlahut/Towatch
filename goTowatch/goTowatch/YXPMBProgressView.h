//
//  YXPMBProgressView.h
//  com.xjlx520.www
//
//  Created by popperAndDeveloperY on 16/8/18.
//  Copyright © 2016年 勇 舒. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YXPMBProgressView : NSObject
+(void)ProgressHUDText:(NSString *)text andShowTime:(NSTimeInterval)time;
-(void)progressHUDStart:(UIView *)view;
-(void)progressHUDHide;
+(instancetype)progressHUDDefault;
@end
