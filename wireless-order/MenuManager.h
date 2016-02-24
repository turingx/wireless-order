//
//  MenuManager.h
//  wireless-order
//
//  Created by turingx on 16/2/21.
//  Copyright © 2016年 turingx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BmobSDK/Bmob.h>
#import "Menu.h"
#import "MenuType.h"

@interface MenuManager : NSObject

//同步菜单
-(void)syncMenu;

//同步菜单分类
-(void)syncMenuType;

@end
