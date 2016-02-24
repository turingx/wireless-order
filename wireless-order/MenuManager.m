//
//  MenuManager.m
//  wireless-order
//
//  Created by turingx on 16/2/21.
//  Copyright © 2016年 turingx. All rights reserved.
//

#import "MenuManager.h"

@implementation MenuManager

-(void)syncMenu{   //同步菜单
    
    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"MenuTbl"];
    
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        for (BmobObject *obj in array) {
            
            NSLog(@"name = %@", [obj objectForKey:@"name"]);
            
            NSLog(@"objectId = %@", [obj objectId]);
            
        }
    }];
    
}

//同步菜单分类
-(void)syncMenuType{
    
    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"MenuTypeTbl"];

    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        for (BmobObject *obj in array) {
      
            NSLog(@"name = %@", [obj objectForKey:@"name"]);
          
            NSLog(@"objectId = %@", [obj objectId]);

        }
    }];
    
}

@end
