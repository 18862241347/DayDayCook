//
//  ResourceCell.m
//  DayDayCook
//
//  Created by jiang on 2017/3/21.
//  Copyright © 2017年 蒋玉顺. All rights reserved.
//

#import "ResourceCell.h"

@interface ResourceCell ()


@property (nonatomic,weak) UIImageView *img;


@end
@implementation ResourceCell
 -(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setUpAllSubViews];
        
    }
    return self;
    
}

-(void)setUpAllSubViews
{
    
    UIImageView*img=[[UIImageView alloc]init];
    [self.contentView addSubview:img];
    self.img = img;
    [self.img mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.bottom.left.right.equalTo(self.contentView);
        
    }];
    
    
    
}

-(void)setDic:(NSDictionary *)dic
{
    _dic = dic;
    
    
    NSString *image_url = [_dic objectForKey:@"image_url"];
    [self.img setImageUrl:image_url];
    
    
    
}

@end
