//
//  UIButton+customFunction.m
//  ScrollTableDemo
//
//  Created by ios2 on 2018/11/30.
//  Copyright © 2018 LenSky. All rights reserved.
//

#import "UIButton+customFunction.h"

@implementation UIButton (customFunction)

+(UIButton *(^)(LGButtonType))lgBtn
{
	return ^(LGButtonType type){
	  return 	[UIButton buttonWithType:(UIButtonType)type];
	};
}

-(UIButton *(^)(NSString *))lgText
{
	return ^(NSString *string){
		[self setTitle:string forState:UIControlStateNormal];
		return self;
	};
}

-(UIButton *(^)(NSString *))lgSeletedText
{
	return ^(NSString *string){
		[self setTitle:string forState:UIControlStateSelected];
		return self;
	};
}

-(UIButton *(^)(UIColor *))lgTextColor
{
	return ^(UIColor *color){
		[self setTitleColor:color forState:UIControlStateNormal];
		return self;
	};
}

-(UIButton *(^)(UIColor  *))lgSeletedTextColor
{
	return ^(UIColor *color){
		[self setTitleColor:color forState:UIControlStateSelected];
		return self;
	};
}
-(UIButton *(^)(CGFloat))lgTextFont
{
	return ^(CGFloat  font){
		self.titleLabel.font = [UIFont systemFontOfSize:font];
		return self;
	};
}

-(UIButton *(^)(UIColor  *))lgLightTextColor
{
	return ^(UIColor *color){
		[self setTitleColor:color forState:UIControlStateHighlighted];
		return self;
	};
}

-(UIButton *(^)(UIImage *))lgImg
{
	return ^(UIImage * image ){
		[self setImage:image forState:UIControlStateNormal];
		return self;
	};
}
-(UIButton *(^)(UIImage *))lgSetedImg
{
	return ^(UIImage * image ){
		[self setImage:image forState:UIControlStateSelected];
		return self;
	};
}
-(UIButton *(^)(id,SEL,UIControlEvents))lgSel
{
	return ^(id  target,SEL selector,UIControlEvents touchType ){
		[self addTarget:target action:selector forControlEvents:touchType];
		return self;
	};
}


@end
