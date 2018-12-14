### LgObserVer

* 简化一下监听 以及 学习一下链式编程

```
//观察 aManager 的color 属性的变化 以及 isReset 变化
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
  
  //监听view 颜色的变化
  [self.view.lgOberVer.addObserverKey(@"backgroundColor") setDidChageMsg:^(id msg) {
		// 给自身的 添加观察
		NSLog(@"收到通知 监听并修改了 |%@",msg);
		ws.navigationItem.title = @"第一页修改完成";
	}];
	
   //移除监听
   self.lgOberVer.removeObserverKey(@"color");

```
 * 创建个按钮
```
	UIButton *btn =	UIButton.lgBtn(LGCustom).lgText(@"修改颜色").lgTextColor([UIColor redColor]).lgSel(self,@selector(onClicked:),UIControlEventTouchUpInside);
	btn.frame = CGRectMake(100, 100, 100, 100);
	[self.view addSubview:btn];
```


