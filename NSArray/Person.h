//
//  Person.h
//  NSArray
//
//  Created by jsyh-mac on 15/7/5.
//  Copyright (c) 2015年 ZCPersonal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger age;


@property (nonatomic, assign) float height;




+ (Person *)personWithName:(NSString *)name andAge:(NSInteger)age andHeight:(float)height;
@end
