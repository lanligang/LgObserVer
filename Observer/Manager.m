//
//  Manager.m
//  Observer
//
//  Created by ios2 on 2018/12/14.
//  Copyright © 2018 LenSky. All rights reserved.
//

#import "Manager.h"

@implementation Manager

+(instancetype)manager
{
	static Manager *manager = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		manager = [[Manager alloc]init];
	});
	return manager;
}

@end
