//
//  GuideTableViewController.h
//  UESTCPioneer
//
//  Created by 马君 on 14-3-19.
//  Copyright (c) 2014年 Sway. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "UPMainViewController.h"

@interface GuideTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView * tableView;
@end
