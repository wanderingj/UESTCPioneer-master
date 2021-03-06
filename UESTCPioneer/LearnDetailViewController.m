//
//  LearnDetailViewController.m
//  UESTCPioneer
//
//  Created by 马君 on 14-3-26.
//  Copyright (c) 2014年 Sway. All rights reserved.
//

#import "LearnDetailViewController.h"

@interface LearnDetailViewController ()
@property (nonatomic,strong) UILabel * nameLabel;
@property (nonatomic,strong) UILabel * adressLabel;
@property (nonatomic,strong) UILabel * stateLabel;
@property (nonatomic,strong) UIButton * downloadButton;
@property (nonatomic,strong) NSString * fileName;

@end

@implementation LearnDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(id) initWithFileName:(NSString *)fileName{
    if (self) {
        _fileName = fileName;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"下载";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 310, 50)];
    _nameLabel.text = [NSString stringWithFormat:@"文件名 : %@",_fileName];
    
    _adressLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, _nameLabel.frame.origin.y + _nameLabel.frame.size.height + 10, 100, 50)];
    _adressLabel.text = @"保存地址 :";
    
    _stateLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, _adressLabel.frame.origin.y + _adressLabel.frame.size.height + 10, 130, 50)];
    _stateLabel.text = @"文件下载状态 :";
    
    
    _downloadButton = [[UIButton alloc] initWithFrame:CGRectMake(100, _stateLabel.frame.origin.y + _stateLabel.frame.size.height + 20.0, 100.0, 30.0)];
    [_downloadButton setBackgroundImage:[UIImage imageNamed:@"filedl"] forState:UIControlStateNormal];
    [_downloadButton setBackgroundImage:[UIImage imageNamed:@"filedl"] forState:UIControlStateHighlighted];
    [_downloadButton setBackgroundImage:[UIImage imageNamed:@"filedl"] forState:UIControlStateSelected];
    _downloadButton.titleLabel.text = @"下载文件";
    _downloadButton.titleLabel.textColor = [UIColor whiteColor];
    
    
    for (int i = 0; i < 3; i ++) {
        UIView * bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 60+60*i, 320, 1)];
        bgView.backgroundColor = [UIColor redColor];
        [self.view addSubview:bgView];
    }
    
    [self.view addSubview:_downloadButton];
    [self.view addSubview:_nameLabel];
    [self.view addSubview:_adressLabel];
    [self.view addSubview:_stateLabel];
    
    
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
