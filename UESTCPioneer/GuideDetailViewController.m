//
//  GuideDetailViewController.m
//  UESTCPioneer
//
//  Created by 马君 on 14-3-25.
//  Copyright (c) 2014年 Sway. All rights reserved.
//

#import "GuideDetailViewController.h"

@interface GuideDetailViewController ()

@property UILabel * titleLabel;
@property UITextField * contentField;
@end

@implementation GuideDetailViewController


- (NSDictionary *)data{
    if (!_data) {
        _data = @{@"newsTitle":@"阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿",@"newsContent":@"阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿阿",@"newsTime":@"2014-03-25"};
    }
    return _data;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"详情";
    self.view.backgroundColor = [UIColor whiteColor];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    _titleLabel.text = self.data[@"newsTitle"];
    _titleLabel.numberOfLines = 0;
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    
    _contentField = [[UITextField alloc] initWithFrame:CGRectMake(0, _titleLabel.frame.size.height, 320, self.view.frame.size.height-_titleLabel.frame.size.height)];
    _contentField.text = self.data[@"newsContent"];
    _contentField.textAlignment = NSTextAlignmentLeft;
    
    
    [self.view addSubview:_titleLabel];
    [self.view addSubview:_contentField];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
