//
//  Manager.h
//  Observer
//
//  Created by ios2 on 2018/12/14.
//  Copyright © 2018 LenSky. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface Manager : NSObject

@property (nonatomic,strong)UIColor *color;

@property(nonatomic,assign)BOOL isReset;

+(instancetype)manager;

@end
