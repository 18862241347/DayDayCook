//
//  RecipeViewController.m
//  DayDayCook
//
//  Created by jiang on 2017/3/20.
//  Copyright © 2017年 蒋玉顺. All rights reserved.
//

#import "RecipeViewController.h"
#import "ResourceCell.h"
@interface RecipeViewController ()

@property (nonatomic ,strong) NSArray *completeArr;

@end


@implementation RecipeViewController
- (void)initCustomNabBarView
{
    
    
}

- (void)initSettingData
{
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"complete" ofType:@"plist"];
    self.completeArr = [NSArray arrayWithContentsOfFile:path];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [ResourceCell autoRegistClassForTableView:self.tableView];

    [self.tableView reloadData];
    
    
}

#pragma mark--
#pragma mark--UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    NSInteger   sectionCount=1;
    return sectionCount;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger   rowCount=self.completeArr.count;
    
    return rowCount;
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ResourceCell*cell=[ResourceCell cellWithTableView:tableView];
    

    NSDictionary *dic = [self.completeArr objectAtIndex:indexPath.row];
    
    cell.dic = dic;
    
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat  rowH=200;
    
    return rowH;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}



- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    
    NSLog(@"111%@",indexPath);
    
    [self startAnimation:cell offsetY:60 duration:0.8];


}


- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath*)indexPath NS_AVAILABLE_IOS(6_0)
{
    NSLog(@"31111111 %@",indexPath);
    [self startAnimation:cell offsetY:80 duration:1.0];

    
}




-(void)startAnimation:(UIView*)view offsetY:(CGFloat)offsetY duration:(NSTimeInterval)duration
{
    
//    view.transform = CGAffineTransformMakeTranslation(0, offsetY);
//    [UIView animateWithDuration:duration animations:^{
//        
//        view.transform = CGAffineTransformIdentity;
//
//    }];
    
    
    view.transform = CGAffineTransformMakeTranslation(0, offsetY);
    [UIView animateWithDuration:duration animations:^{
        
        view.transform = CGAffineTransformIdentity;
        
    }];

}







- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    
  

//    NSIndexPath *index = [NSIndexPath indexPathForRow:1 inSection:0];
//    [self.tableView reloadRowsAtIndexPaths:index withRowAnimation:0];
    
    
}
@end
