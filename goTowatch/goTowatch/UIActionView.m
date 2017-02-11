//
//  UIActionView.m
//  goTowatch
//
//  Created by XingJian on 2017/2/10.
//  Copyright © 2017年 XingJian. All rights reserved.
//

#import "UIActionView.h"

@implementation UIActionView
+(instancetype)actionViewDefault{
    static UIActionView *_view;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _view = [[super alloc]init];
    });
    return _view;

}
-(void)showUIActionView:(UIViewController*)viewController OpenCamera:(void(^)())openCameraBlock openPhotoAlbum:(void(^)())openPhotoAlbumBlock{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"上传照片" message:nil preferredStyle: UIAlertControllerStyleActionSheet];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"拍照选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"从相册获取" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [controller addAction:action];
     [controller addAction:action1];
     [controller addAction:action2];
    [viewController presentViewController:controller animated:YES completion:nil];
    

    
}
@end
