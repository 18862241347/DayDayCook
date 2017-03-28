
//
//  HomeViewController.m
//  DayDayCook
//
//  Created by jiang on 2017/3/20.
//  Copyright © 2017年 蒋玉顺. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController


- (void)initCustomNabBarView
{
    
    // wx.freshfresh.com
    
}

- (void)initSettingData
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)queryCatList
{
    NSMutableDictionary *paraDic_ = [NSMutableDictionary dictionary];
    
    
    
    if (!self.serviceManager)
    {
        self.serviceManager = [[XLAFServiceManger alloc] init];
    }
    self.serviceManager.delegate = self;
    [GlobalUtils show_HUD:@""];
    [self.serviceManager postDataWithMethod:@"wx.freshfresh.com" withDictionary:paraDic_];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
//    [self queryCatList];
    
    
 
    
}

#pragma mark--
#pragma mark--UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    NSInteger   sectionCount=3;
    return sectionCount;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger   rowCount=1;
    
    return rowCount;
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell=[UITableViewCell cellWithTableView:tableView];
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat  rowH=10;
    
    return rowH;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    [self queryCatList];
    
    
    NSArray*dic= @[@{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170320/e3af5d85-2bc0-473e-ae89-88248e9ea4d3",
                       @"recommend_type": @"2",
                       @"description": @"酱爆豆腐干炒肉丝",
                       @"click_count": @387,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"今日三菜一汤",
                       @"rid": @3425,
                       @"share_count": @5,
                       
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170320/223a9c8c-923f-4be2-9ac0-f68aac5ef7ad",
                       @"recommend_type": @"2",
                       @"description": @"@前后文化",
                       @"click_count": @157,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"前后文化［筷子频道］一起发现美的食物！\r\n微博：前后文化",
                           @"authorName": @"前后文化",
                           @"authorId": @"114",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170320/40303456-9f4c-49be-82cb-53fd65990c1c"
                       },
                       @"title": @"热腾腾的胡椒猪肚鸡煲",
                       @"rid": @3424,
                       @"share_count": @6,
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170317/79f5d823-1836-403d-84c6-2c0d7cad97f9",
                       @"recommend_type": @"2",
                       @"description": @"@膳叔",
                       @"click_count": @1562,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"我叫膳叔，是一枚标准吃货，工作不忙的时候我还是个家庭煮夫和超级奶爸。作为一名有理想的营养师，我一直热衷于将自己研究的简单+快手+美味的营养餐做成图文或视频食谱分享给大家，你的关注就是对我最大的肯定。",
                           @"authorName": @"膳叔",
                           @"authorId": @"97",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170317/3bad2e9b-e0e7-4978-8a8f-3da30a048842"
                       },
                       @"title": @"低卡又营养, 鸡肉粉丝沙拉",
                       @"rid": @3414,
                       @"share_count": @10,
                      
                       }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170317/84a6d00c-cebe-4368-a508-09a898806ba4",
                       @"recommend_type": @"2",
                       @"description": @"清蒸鱼腩",
                       @"click_count": @2366,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"鱼：我很鲜嫩！你想吃吗？",
                       @"rid": @3413,
                       @"share_count": @16,
                      
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170317/8a0ff292-fa59-42e3-b7b1-0de912f11326",
                       @"recommend_type": @"2",
                       @"description": @"@任芸丽",
                       @"click_count": @1025,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"美食作家，资深媒体人，中国味道的研究者，传承地道家庭料理，融汇美食新知性。\r\n微信：乐生活空间",
                           @"authorName": @"任芸丽",
                          @"authorId": @"37",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161214/a3b932ea-7cfd-4497-8072-0885896bd2b8"
                       },
                       @"title": @"日式乳酸卷心菜",
                       @"rid": @3412,
                       @"share_count": @1,
                     
                       }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170316/c052a481-6504-4261-b3d3-ea2af6713631",
                       @"recommend_type": @"2",
                       @"description": @"@厨娘物语",
                       @"click_count": @5870,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"有爱的生活美学，厨娘物语",
                           @"authorName": @"厨娘物语",
                           @"authorId": @"22",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/34cb0a36-40f0-42d3-864e-0f109ea02c41"
                       },
                       @"title": @"DIY爆火的网红小吃",
                       @"rid": @3411,
                       @"share_count": @49,
                      
                       }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170314/e24cfdfb-00f2-43c2-93aa-bbf491bc8543",
                       @"recommend_type": @"2",
                       @"description": @"黄小厨&日日煮",
                       @"click_count": @7935,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"竹笋最嫩是春天",
                       @"rid": @3409,
                       @"share_count": @39,
                      
                       }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170316/30efa6b8-bf66-4060-b111-55ca2bb82cb6",
                       @"recommend_type": @"2",
                       @"description": @"@槑文化",
                       @"click_count": @4131,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"微博搜索：槑（mei）文化关注我吧。好好生活，呆呆文化。",
                           @"authorName": @"槑文化",
                           @"authorId": @"88",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170309/d6eb8e41-791e-489f-bf32-2cd35304276b"
                       },
                       @"title": @"超低卡的湿奶油虾",
                       @"rid": @3408,
                       @"share_count": @30,
                      
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170316/5c6c1052-8295-4785-8641-642cc0a04e22",
                       @"recommend_type": @"2",
                       @"description": @"微体社区",
                       @"click_count": @7678,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"微体兔终于等到你啦！微体社区美食频道，每天一个原创视频，用简单清新的风格与大家分享吃的小幸福！",
                           @"authorName": @"微体社区",
                           @"authorId": @"64",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170227/e904b71a-46c0-493e-9061-b7d7886111fb"
                       },
                       @"title": @"夜市味道，孜然面筋",
                       @"rid": @3399,
                       @"share_count": @56,
                      
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170316/39221a8c-322f-4758-aada-933cddaba043",
                       @"recommend_type": @"2",
                       @"description": @"胡辣汤",
                       @"click_count": @8843,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"地域小吃之河南的那一口",
                       @"rid": @3398,
                       @"share_count": @49,
                       
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170316/46a01681-9c57-4fc8-a1bc-c393dbfb6767",
                       @"recommend_type": @"2",
                       @"description": @"@淘菜猫",
                       @"click_count": @5412,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"生鲜食材，私房菜谱，膳食营养，美食福利－关注我，关注美食与健康。",
                           @"authorName": @"淘菜猫",
                           @"authorId": @"69",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170302/6a6f3b67-9488-472b-a1bd-516a18cb6d05"
                       },
                       @"title": @"章鱼粉丝煲，美味吃不停",
                       @"rid": @3397,
                       @"share_count": @44,
                      
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170315/1bdfd320-13f9-4239-a19f-ce844d3018f4",
                       @"recommend_type": @"2",
                       @"description": @"三文魚生菜沙拉",
                       @"click_count": @11414,
                       @"source": @{
                          @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"瘦身系列之带你吃草",
                       @"rid": @3395,
                       @"share_count": @61,
                       
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170315/16e89ab7-63ad-48f3-abca-5576aed338b9",
                       @"recommend_type": @"2",
                       @"description": @"@妙馔",
                       @"click_count": @3024,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"作者：Coffee cat   旅居欧洲十多年，现居汉堡。享受德国的古朴，宁静和自然。德国大学毕业后从事翻译，闲暇爱好烹饪美食，喜爱西餐文化。",
                           @"authorName": @"妙馔",
                           @"authorId": @"33",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161214/38b2a44a-4d67-4355-968f-1ffc20b406d6"
                       },
                       @"title": @"罗勒番茄大蒜慢烤鸡腿",
                       @"rid": @3394,
                       @"share_count": @22,
                      
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170314/e7a86b45-c6ae-418e-9e0f-4714e4d779f4",
                       @"recommend_type": @"2",
                       @"description": @"@Star·小猪",
                       @"click_count": @6908,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"杭州人，做过美食专栏作家，现在供职互联网企业。她是日日煮粉丝群公认的早餐女神，每天用极高颜值的早餐唤醒群里所有人的味蕾。让你知道，这个世界有那么多美好的，积极的，向上的事情！",
                           @"authorName": @"Star·小猪",
                           @"authorId": @"27",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/bef656b6-d904-435e-833c-5a2a131d9b9e"
                       },
                       @"title": @"网红甜品-贝果能量早餐",
                       @"rid": @3389,
                       @"share_count": @12,
                       
                       }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170314/0b312647-d8a6-45ba-84f3-d9769f9e8763",
                       @"recommend_type": @"2",
                       @"description": @"芝心紫菜蛋卷",
                       @"click_count": @6236,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"卷物多滋味，美味卷上瘾",
                       @"rid": @3388,
                       @"share_count": @20,
                       
                       }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170314/b151330b-7fda-4a8e-901f-a1b741460b26",
                       @"recommend_type": @"2",
                       @"description": @"@小食运",
                       @"click_count": @7208,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"与你相遇，好食运",
                           @"authorName": @"小食运",
                           @"authorId": @"90",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170309/337ae98d-7267-438e-96da-e83106db2c7d"
                       },
                       @"title": @"原来红糖还可以这样吃！",
                       @"rid": @3387,
                       @"share_count": @29,
                       
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170313/c932f2d0-abe6-462e-8b76-f6d8ac621232",
                       @"recommend_type": @"2",
                       @"description": @"经典胡桃派",
                       @"click_count": @6675,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"3.14不是派，是给你的爱",
                       @"rid": @3385,
                       @"share_count": @16,
                       
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170313/92680f5d-8e99-4455-bfbb-5dbd8184a042",
                       @"recommend_type": @"2",
                       @"description": @"@EATUP耳光料理",
                       @"click_count": @7513,
                       @"source": @{
                           @"displayAuthor": @true,
                           @"authorSummary": @"用不复杂的手法还原食材的本味",
                           @"authorName": @"EATUP耳光料理",
                           @"authorId": @"91",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170309/3549d758-ff3b-4c83-b13f-2b57bb9d3898"
                       },
                       @"title": @"不费劲的开胃菜 | 芥末鲜虾",
                       @"rid": @3384,
                       @"share_count": @36,
        
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170313/a2c90992-1fba-4d7d-a287-328b5f301afe",
                       @"recommend_type": @"2",
                       @"description": @"@吃不胖的猫",
                       @"click_count": @13263,
                       @"source": @{
                           @"displayAuthor": @true,
                          @"authorSummary": @"一枚web前端工程师的美食生活杂志",
                           @"authorName": @"吃不胖的猫",
                           @"authorId": @"23",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20170209/07047c3f-3330-46b8-8bee-7296de7f958f"
                       },
                       @"title": @"用料简单、口感丰富“蔬菜烘蛋”",
                       @"rid": @3371,
                       @"share_count": @109,
                       
                   }, @{
                       @"recipe_type": @"01",
                       @"image_url": @"http://pic.daydaycook.com/production/images/20170313/f067119f-d68e-4acb-8a75-2b91d34ec928",
                       @"recommend_type": @"2",
                       @"description": @"黑椒虾球炸茄子",
                       @"click_count": @17162,
                       @"source": @{
                           @"displayAuthor": @false,
                           @"authorSummary": @"生活就要极致",
                           @"authorName": @"小煮",
                           @"authorId": @"1",
                           @"authorImageUrl": @"http://pic.daydaycook.com/production/images/20161130/1dfd7c44-ff47-43cd-b7a6-e52770ef41ca"
                       },
                       @"title": @"1,2,3，茄子！",
                       @"rid": @3370,
                       @"share_count": @103,
                       
                       }];
    
    
  
    
    
    NSString *filePatch = @"/Users/jiang/Desktop/banner.plist";
    [dic writeToFile:filePatch atomically:YES];

}


@end
