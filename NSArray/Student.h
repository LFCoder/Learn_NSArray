//
//  Student.h
//  NSArray
//
//  Created by jsyh-mac on 15/8/1.
//  Copyright (c) 2015年 ZCPersonal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Student : NSObject

@property (nonatomic, copy) NSString *lastname;

@property (nonatomic, copy) NSString *firstname;

@property (nonatomic, strong) Book *book;


+ (Student *)studentWithFirstname:(NSString *)firstName lastname:(NSString *)lastName bookName:(NSString *)bookName;


@end
