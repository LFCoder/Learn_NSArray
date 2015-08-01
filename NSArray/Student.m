//
//  Student.m
//  NSArray
//
//  Created by jsyh-mac on 15/8/1.
//  Copyright (c) 2015年 ZCPersonal. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (Student *)studentWithFirstname:(NSString *)firstName lastname:(NSString *)lastName bookName:(NSString *)bookName
{



    Student *student = [[Student alloc] init];
            Book *book = [[Book alloc] init];
            student.firstname = firstName;
            student.lastname = lastName;
            student.book = book;
            book.name = bookName;

    return student;


}

//- (Student *)initWithFirstname:(NSString *)firstName lastname:(NSString *)lastName bookName:(NSString *)bookName
//{
//
//    if (self = [super init]) {
//        
//        
//        Student *student = [[Student alloc] init];
//        Book *book = [[Book alloc] init];
//        student.firstname = firstName;
//        student.lastname = lastName;
//        student.book = book;
//        book.name = bookName;
//        
//        
//    }
//    
//    
//    
//    return
//    
//
//
//
//}



@end
