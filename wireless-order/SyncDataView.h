//
//  SyncDataView.h
//  wireless-order
//
//  Created by turingx on 16/2/20.
//  Copyright © 2016年 turingx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SyncDataView : UIView<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong)UITableView *tv;
@property(nonatomic, strong)NSArray *dataSource;


-(instancetype)initWithFrame:(CGRect)frame;

@end
