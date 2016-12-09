//
//  ViewController.m
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import "ViewController.h"
#import "SZViewAccount.h"


@interface ViewController ()

@property (nonatomic, weak) SZViewAccount * viewAccount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initUI];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showUI];
}

#pragma mark - privateCode

- (void)initUI {
    SZViewAccount * view = [[SZViewAccount alloc] init];
    view.frame = CGRectMake(0, 50, ScreenWidth, 150);
    [self.view addSubview:view];
    _viewAccount = view;
    [self.viewAccount refreshUI];
}

- (void)showUI {
    
}















@end
