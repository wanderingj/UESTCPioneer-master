//
//  GuideTableViewController.h
//  UESTCPioneer
//
//  Created by 马君 on 14-3-19.
//  Copyright (c) 2014年 Sway. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "UPMainViewController.h"

@interface TheoryTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView * tableView;
@property (nonatomic,strong) NSArray * data;

@end
