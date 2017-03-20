//
//  DetailViewController.h
//  DayDayCook
//
//  Created by jiang on 2017/3/20.
//  Copyright © 2017年 蒋玉顺. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

