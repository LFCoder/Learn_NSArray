//
//  Person.m
//  NSArray
//
//  Created by jsyh-mac on 15/7/5.
//  Copyright (c) 2015年 ZCPersonal. All rights reserved.
//

#import "Person.h"

@implementation Person


+ (Person *)personWithName:(NSString *)name andAge:(NSInteger)age andHeight:(float)height
{


    Person *person = [[Person alloc] init];


    person.name = name;
    person.age = age;
    person.height = height;



    return person;


}

- (NSString *)description
{


    NSString *str = [NSString stringWithFormat:@"name = %@, age = %ld, height = %f",self.name,self.age,self.height];



    return str;


}








@end
