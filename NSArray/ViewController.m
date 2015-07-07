//
//  ViewController.m
//  NSArray
//
//  Created by jsyh-mac on 15/7/5.
//  Copyright (c) 2015年 ZCPersonal. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    /**
     *  数组的排序
     */
    [self sortArray];
    
    
    
    
}



/**
 *  数组的排序
 */
- (void)sortArray
{

    
/***********************************************************/

      /*#######第一种排序方式,利用selector选择器########*/

/***********************************************************/
    
    
    NSArray *array = @[@"2",@"6",@"3",@"5"];
    
    
    array = [array sortedArrayUsingSelector:@selector(compare:)];
    
    
    /*注:1.compare:只适用于数组元素是字符串和NSValue,选择的执行原理是这样的,数组把每个元素对象拿出来,去调用compare:
        例如:[@"2" compare:@"6"]
    */
    
    NSLog(@"%@",[array description]);
    
  
    
    
    
    
    
/***********************************************************/
    
           /*#######第二种排序 利用block########*/
    
/***********************************************************/

    Person *p1 = [Person personWithName:@"2" andAge:16 andHeight:160];
    
    Person *p2 = [Person personWithName:@"8" andAge:25 andHeight:170];
    
    
    Person *p3 = [Person personWithName:@"1" andAge:23 andHeight:168];

  
    
    //1.
    NSArray *persons = @[p1,p2,p3];

   persons = [persons sortedArrayUsingComparator:^NSComparisonResult(Person *obj1, Person *obj2) {
       
       //根据名字排序
       NSComparisonResult result = [obj1.name compare:obj2.name];
       
       //根据年龄排序
       NSComparisonResult result1 = [@(obj1.age) compare:@(obj2.age)];
       
       return result1;
       
   }];
    

    NSLog(@"%@",[persons description]);
    
    /*注:1.该排序方式默认是升序排序的.
         2.原理:取出数组中的任意两个元素的属性进行比较,如果比较结果是降序NSOrderedDescending,那么两个元素位置调换,否则,位置不变
         例如:[@(16) compare:@(20)],返回的结果是ascend,元素位置不调换;
              [@(25) compare:@(16)],返回的结果是descende,位置调换;
   */
    
    
    
    
/***********************************************************/

     /*#######第三种排序方式,########*/

/***********************************************************/
    
 
    
    
    
    

}











@end
