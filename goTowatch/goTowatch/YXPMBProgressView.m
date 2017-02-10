//
//  YXPMBProgressView.m
//  com.xjlx520.www
//
//  Created by popperAndDeveloperY on 16/8/18.
//  Copyright © 2016年 勇 舒. All rights reserved.
//

#import "YXPMBProgressView.h"
#import "MBProgressHUD.h"
static YXPMBProgressView *progressView;
@interface YXPMBProgressView()
@property(nonatomic,strong)MBProgressHUD *HUD;
@end
@implementation YXPMBProgressView
+(void)ProgressHUDText:(NSString *)text andShowTime:(NSTimeInterval)time{
      UIView *view = (UIView*)[[[UIApplication sharedApplication]delegate]window];
    MBProgressHUD *HUD = [[MBProgressHUD alloc]initWithView:view];
  HUD.label.text =  text;
HUD.mode = MBProgressHUDModeText;
    [view addSubview:HUD];
    [HUD showAnimated:YES];
    [HUD hideAnimated:YES afterDelay:time];
}
+(instancetype)progressHUDDefault{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        progressView = ( YXPMBProgressView *)@"YXPMBProgressView";
        progressView = [[YXPMBProgressView alloc]init];
    });
 NSString *classingStr = NSStringFromClass([self class]);
if (![classingStr isEqualToString:@"YXPMBProgressView"]) {
    NSParameterAssert(nil);
}
return progressView;

}
-(void)progressHUDStart:(UIView *)view{
        _HUD = [[MBProgressHUD alloc]initWithView:view];
                  _HUD.label.text =@"正在加载";
        [view addSubview:_HUD];
        [_HUD showAnimated:YES];
}
-(void)progressHUDHide{
    [self.HUD hideAnimated:YES];
}
@end
