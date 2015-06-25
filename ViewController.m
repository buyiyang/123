//
//  ViewController.m
//  123
//
//  Created by rongdu on 15/6/19.
//  Copyright (c) 2015年 rongdu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *table;
    UISearchDisplayController *vc1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImageView *img=[[UIImageView alloc]initWithFrame:[self  setframeorignx:130 setframeorigny:20 setframewith:100 setframeoheight:200]];
//  //  NSString *newar=[[NSBundle mainBundle]pathForResource:@"m_1314714752375" ofType:@""];
//    NSString *ew=[[NSBundle mainBundle]pathForResource:@"m_1314714752375" ofType:@"jpg"];
//    img.image=[UIImage imageWithContentsOfFile:ew];
//    [self.view addSubview:img];
//    UIImageView *img1=[[UIImageView alloc]initWithFrame:[self  setframeorignx:20 setframeorigny:20 setframewith:100 setframeoheight:200]];
//    img1.image=[UIImage imageNamed:@"m_1314714752375.jpg"];
//    [self.view addSubview:img1];
//    UIImageView *img2=[[UIImageView alloc]initWithFrame:[self  setframeorignx:130 setframeorigny:290 setframewith:100 setframeoheight:200]];
//    img2.image=[UIImage imageNamed:@"m_1314714752375.jpg"];
//    [self.view addSubview:img2];
    table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    UISearchBar *vc=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];

    vc.delegate=self;
    table.tableHeaderView=vc;
//    UISearchDisplayController *sear=[uisea];
    vc1=[[UISearchDisplayController alloc]initWithSearchBar:vc contentsController:self];
    vc1.searchResultsDataSource = self;
    vc1.active = NO;
    vc1.searchResultsDelegate = self;
    
    
    
    
    
    
    
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{

    


}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text=@"123";
    return cell;


}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 60;

}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *vi=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 60)];
    UIButton *bnt=[UIButton buttonWithType:UIButtonTypeCustom];
   // [bnt setBackgroundColor:[UIColor redColor]];
   // bnt.frame=CGRectMake(0, 0, 30, 10);
    [bnt setTitle:@"123" forState:UIControlStateNormal];
    return bnt;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
