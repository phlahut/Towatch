//
//  BannerViewController.m
//  goTowatch
//
//  Created by XingJian on 2017/1/31.
//  Copyright © 2017年 XingJian. All rights reserved.
//

#import "BannerViewController.h"

@interface BannerViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *imgName;
@end

@implementation BannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(gotoNext)];
    // Do any additional setup after loading the view.
}
-(void)gotoNext{
    //上传图片以及保存图片名称
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)uodataimg:(id)sender {
  [[UIActionView actionViewDefault]showUIActionView:self OpenCamera:^{
      
  } openPhotoAlbum:^{
      
  }];
    
}
-(void)OpenPhto{
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc]init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = sourceType;
        [self presentViewController:picker animated:YES completion:nil];
        
    }
    
}
-(void)openPhotoAlbum{
    _imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:_imagePickerController animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
