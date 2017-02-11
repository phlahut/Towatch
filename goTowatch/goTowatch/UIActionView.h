//
//  UIActionView.h
//  goTowatch
//
//  Created by XingJian on 2017/2/10.
//  Copyright © 2017年 XingJian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NSUInteger NSStringEncoding;
@interface UIActionView : NSObject
+(instancetype)actionViewDefault;
-(void)showUIActionView:(UIViewController*)viewController OpenCamera:(void(^)())openCameraBlock openPhotoAlbum:(void(^)())openPhotoAlbumBlock;
@end
