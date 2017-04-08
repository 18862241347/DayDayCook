
//
//  MyViewController.m
//  DayDayCook
//
//  Created by jiang on 2017/3/20.
//  Copyright © 2017年 蒋玉顺. All rights reserved.
//

#import "MyViewController.h"
#import "ResourceCell.h"



@interface MyViewController ()
{
    CGFloat _offY;
    CGFloat _lastY;

}
@property (nonatomic ,strong) NSArray *completeArr;

@end

@implementation MyViewController
- (void)initCustomNabBarView
{
    
    
}

- (void)initSettingData
{
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"complete" ofType:@"plist"];
    self.completeArr = [NSArray arrayWithContentsOfFile:path];
    
    
    _offY = -64;
    _lastY = 150;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    
    
    UIView*view=[[UIView alloc]init];
//    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.right.equalTo(self.view);
        
        
    }];
    
    
    
    [view addSubview:self.tableView];
    [self.tableView mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.left.right.equalTo(view);

        
    }];
    self.tableView.backgroundColor =[UIColor clearColor];

    
    [ResourceCell autoRegistClassForTableView:self.tableView];
    
//    [self.tableView reloadData];
    
    
}

#pragma mark--
#pragma mark--UITableViewDelegate

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
    CGFloat  rowH=50+0;
    
    
    
    return rowH;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}





- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath*)indexPath NS_AVAILABLE_IOS(6_0)
{
    NSLog(@"31111111 %@",indexPath);
//    [self startAnimation:cell offsetY:80 duration:1.0];
    
    
}




-(void)startAnimation:(UIView*)view offsetY:(CGFloat)offsetY duration:(NSTimeInterval)duration
{
 
    
    view.transform = CGAffineTransformMakeTranslation(0, offsetY);
    [UIView animateWithDuration:duration animations:^{
        
        view.transform = CGAffineTransformIdentity;
        
    }];
    
}







- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    
    _lastY = scrollView.contentOffset.y;
    
    
    NSLog(@"DADA%f",_lastY);

    
    
        if (_lastY>-64)
        {
            
            
            
            
            for (ResourceCell*cell in self.tableView.subviews)
            {
                
                
                CGAffineTransform T = CGAffineTransformIdentity;
                cell.transform = CGAffineTransformScale(T, 1, 1.2);

                
            }
    
    
        }else
        {
    
            
        }

    
    
    
   
    
    

    
}
//- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset NS_AVAILABLE_IOS(5_0)
//{
//    _lastY = 0 ;
//    [self.tableView reloadData];
//}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
   

}
//- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
//{
//    _offY = 0 ;
//    [self.tableView reloadData];
//
//}
@end
