//
//  UIButton+customFunction.h
//  ScrollTableDemo
//
//  Created by ios2 on 2018/11/30.
//  Copyright © 2018 LenSky. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LGButtonType) {
	LGCustom = 0,
	LGSystem ,
	LGDetailDisclosure,
	LGInfoLight,
	LGInfoDark,
	LGContactAdd,
	LGPlain ,
	LGRoundedRect = LGSystem
};

@interface UIButton (customFunction)

+(UIButton *(^)(LGButtonType))lgBtn;

-(UIButton *(^)(NSString *))lgText;

-(UIButton *(^)(NSString *))lgSeletedText;

-(UIButton *(^)(UIColor *))lgTextColor;

-(UIButton *(^)(UIColor  *))lgSeletedTextColor;

-(UIButton *(^)(CGFloat))lgTextFont;

-(UIButton *(^)(UIColor  *))lgLightTextColor;

-(UIButton *(^)(UIImage *))lgImg;

-(UIButton *(^)(UIImage *))lgSetedImg;

-(UIButton *(^)(id target,SEL sel,UIControlEvents touchType))lgSel;

@end
