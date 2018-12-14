//
//  ViewController.m
//  Observer
//
//  Created by ios2 on 2018/12/14.
//  Copyright © 2018 LenSky. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+LgObserver.h"
#import "Manager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	//观察者 设置观察类型

	Manager *aManager =  [Manager manager];

	//先修改 被观察者 添加观察path
	__weak typeof(self)ws = self;


	[self.lgOberVer
	 .changeObserved(aManager)
	 .addObserverKey(@"color")
	 .addObserverKey(@"isReset")
	 setDidChageMsg:^(id msg) {

		NSString *key = msg[lgMsgKey];
		if ([key isEqualToString:@"color"]) {
			UIColor *color = msg[@"change"][@"new"];
			ws.view.backgroundColor = color;
		}
	}];


	[self.view.lgOberVer.addObserverKey(@"backgroundColor") setDidChageMsg:^(id msg) {
		// 给自身的 添加观察
		NSLog(@"收到通知 监听并修改了 |%@",msg);
		ws.navigationItem.title = @"第一页修改完成";
	}];





}


@end
