//
//  DatabaseUpController.m
//  goTowatch
//
//  Created by XingJian on 2017/2/8.
//  Copyright © 2017年 XingJian. All rights reserved.
//

#import "DatabaseUpController.h"

@interface DatabaseUpController ()

@end

@implementation DatabaseUpController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)upNewContentsData:(id)sender {
    [[YXPMBProgressView progressHUDDefault]progressHUDStart:self.view];
    BmobObject *gameScore = [BmobObject objectWithClassName:@"newContents"];
    [gameScore setObject:@"黄平谷陇大高山  野生杜鹃红似火" forKey:@"title"];
    [gameScore setObject:@"" forKey:@"newstime"];
    NSArray *imgs = @[@"/UploadFiles/hpxw3/2016/4/201604210850106861.jpg",@"/UploadFiles/hpxw3/2016/4/201604210849083528.jpg",@"/UploadFiles/hpxw3/2016/4/201604210847567695.jpg",@"/UploadFiles/hpxw3/2016/4/201604210846450559.jpg",@"/UploadFiles/hpxw3/2016/4/201604210849408501.jpg",@"/UploadFiles/hpxw3/2016/4/201604210848256039.jpg"];
    [gameScore setObject:imgs forKey:@"newsImg"];
    [gameScore setObject:@"http://www.julanhp.com" forKey:@"imgHttpUrl"];
    [gameScore setObject:@"且兰黄平网" forKey:@"from"];
    NSArray *contents = @[@"大高山远眺（王永龙摄）\n近日，位于黄平县谷陇镇大高山的万亩野生杜鹃竞相开放，万亩大高山上像铺上了连绵不断的红绸，万紫千红，非常壮观，美丽的天然美景吸引了大量周边县市的市民前来观赏，也吸引了很多手持“长枪短炮”的摄影爱好者前来采风创作，一些市民还穿上“红军装”，拍一张《闪闪的红星》里的“岭上开遍哟，映山红！” 的“剧照”。据大高山村会计龙虎成介绍，4月23至25日，大高山下的村民将举办为期三天民族集会，届时将开展富有民族特色的斗牛、斗鸡、赛马、苗族芦笙舞等活动，还可品尝到苗家正宗的酸汤鱼、鸡稀饭等特色美食。",@"开满映山红的大高山（王永龙摄)\n",@"花海从中留个影（王永龙摄)\n",@"身着民族服装的游客（王永龙摄）\n",@"盛开的映山红（王永龙摄）\n",@"采风的摄影爱好者（王永龙摄）\n友情提示：大高山距黄平县城42公里，贵阳方向游客可从贵瓮、余凯高速从黄平北（南）站下高速经县城、谷陇镇到大高山；凯里方向游客可从凯施二级路或余凯高速经黄平县城、谷陇镇、苗陇（原苗陇乡）、黑冲（小地名）到大高山，也可从凯里旁海、谷陇镇到大高山；施秉、镇远游客可从杨柳塘、苗陇到大高山。"];
    [gameScore setObject:contents forKey:@"content"];
    [gameScore saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [[YXPMBProgressView progressHUDDefault] progressHUDHide];
        }
    }];
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
