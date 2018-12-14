//
//  ThreeViewController.m
//  Observer
//
//  Created by ios2 on 2018/12/14.
//  Copyright © 2018 LenSky. All rights reserved.
//

#import "ThreeViewController.h"
#import "NSObject+LgObserver.h"
#import "Manager.h"

#import "UIButton+customFunction.h"

@interface ThreeViewController ()



@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	Manager *aManager =  [Manager manager];
	//先修改 被观察者 添加观察path
	__weak typeof(self)ws = self;

	[self.lgOberVer
	 .changeObserved(aManager)
	 .addObserverKey(@"color") setDidChageMsg:^(id msg) {
		 NSString *key = msg[lgMsgKey];
		 if ([key isEqualToString:@"color"]) {
			 UIColor *color = msg[@"change"][@"new"];
			 ws.view.backgroundColor = color;
		 }
	 }];

	UIButton *btn =	UIButton.lgBtn(LGCustom).lgText(@"修改颜色").lgTextColor([UIColor redColor]).lgSel(self,@selector(onClicked:),UIControlEventTouchUpInside);
	btn.frame = CGRectMake(100, 100, 100, 100);
	[self.view addSubview:btn];
	__block UIButton *blockBtn = btn;
	
	[self.view.lgOberVer.addObserverKey(@"backgroundColor") setDidChageMsg:^(id msg) {
			// 给自身的 添加观察
		NSLog(@"收到 监听并修改了 |%@",msg);
		blockBtn.lgTextColor([UIColor whiteColor]);
	}];



}

-(void)onClicked:(UIButton *)btn
{
    Manager *aManager =  [Manager manager];
	aManager.color = [UIColor redColor];
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
