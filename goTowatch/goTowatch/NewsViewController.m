//
//  NewsViewController.m
//  goTowatch
//
//  Created by XingJian on 2017/2/8.
//  Copyright © 2017年 XingJian. All rights reserved.
//

#import "NewsViewController.h"

@interface NewsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *newsFrom;

@property (weak, nonatomic) IBOutlet UITextField *newsTitle;
@property (weak, nonatomic) IBOutlet UITextView *NewsContent;
@property (weak, nonatomic) IBOutlet UITextField *newsDate;


@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.NewsContent.layer.borderWidth = 1;
    self.NewsContent.layer.borderColor = [UIColor blackColor].CGColor;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"确认" style:UIBarButtonItemStyleDone target:self action:@selector(cickAffirm)];
   
}
-(void)cickAffirm{
    
}
- (IBAction)uploadNewsImg:(id)sender {
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
