//
//  SyncDataView.m
//  wireless-order
//
//  Created by turingx on 16/2/20.
//  Copyright © 2016年 turingx. All rights reserved.
//

#import "SyncDataView.h"

@implementation SyncDataView

//
-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
       // self.backgroundColor = [UIColor purpleColor];
        
        self.tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        
       // self.dataSource = [NSArray arrayWithObjects:@"同步菜单", @"同步菜单分类", nil];
        self.dataSource = @[@"同步菜单", @"同步菜单分类"];
        
        self.tv.dataSource = self;
        self.tv.delegate = self;
        
        [self addSubview:self.tv];
        
        return self;
    }
    return nil;
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cid"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cid"];
    }
    
    cell.textLabel.text = [self.dataSource objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.row) {
        case 0:{
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"是否要同步数据" delegate:self cancelButtonTitle:@"是" otherButtonTitles:@"否", nil];
            alert.tag = 0;
            [alert show];
            
            NSLog(@"");
        }
            break;
        case 1:{
            
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"是否要同步数据" delegate:self cancelButtonTitle:@"是" otherButtonTitles:@"否", nil];
            alert.tag = 1;
            [alert show];
            
            NSLog(@"");
        }
            break;
        default:
            break;
    }

}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    switch (alertView.tag) {
        case 0:
            if(buttonIndex == 0){
                NSLog(@"tongbu");
            }
            break;
            
        case 1:
            if(buttonIndex == 0){
                NSLog(@"tongbu");
            }
            break;
        default:
            break;
    }

}

@end
