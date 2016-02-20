//
//  MasterViewController.m
//  wireless-order
//
//  Created by turingx on 16/2/20.
//  Copyright © 2016年 turingx. All rights reserved.
//

#import "MasterViewController.h"
#import "constant.h"

@interface MasterViewController ()

@property(nonatomic, strong)UITableView *tableView;
@property(nonatomic, strong)NSMutableArray *datasource;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.frame = CGRectMake(0, 5, MAX_WIDTH, self.view.frame.size.height);
    //MAX_WIDTH引用自constant.h
    self.tableView.delegate = self;
    self.tableView.dataSource =self;
    [self.view addSubview:self.tableView];
    
    [self initDatasource];  //调用数据源
    
    
    // Do any additional setup after loading the view.
}


-(void)initDatasource{    //初始化数据源设置主视图左侧的菜单选项名称
    
    self.datasource = [NSMutableArray arrayWithCapacity:5];
    [self.datasource addObject:@"浏览菜单"];
    [self.datasource addObject:@"查看餐台"];
    [self.datasource addObject:@"买单结算"];
    [self.datasource addObject:@"同步数据"];
    [self.datasource addObject:@"系统设置"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.datasource.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cid"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cid"];
        NSString *Item = [self.datasource objectAtIndex:indexPath.row];
        cell.textLabel.text = Item;
    }
    
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
