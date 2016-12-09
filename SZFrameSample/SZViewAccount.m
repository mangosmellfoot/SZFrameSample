//
//  SZViewAccount.m
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import "SZViewAccount.h"
#import "SZDataLayer.h"
#import "SZModelAccount.h"
#import "UIImageView+WebCache.h"


@interface SZViewAccount ()



@end

@implementation SZViewAccount

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initUI];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)initUI {
    //
    UILabel * labelName = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, ScreenWidth * 0.5 - 10, 40)];
    labelName.textAlignment = NSTextAlignmentCenter;
    labelName.font = [UIFont boldSystemFontOfSize:20];
    labelName.textColor = [UIColor blackColor];
    labelName.backgroundColor = [UIColor whiteColor];
    [self addSubview:labelName];
    labelName.backgroundColor = [UIColor yellowColor];
    _labelName = labelName;
    //
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth * 0.5 + 5, 5, ScreenWidth * 0.5 - 10, 120)];
    imageView.backgroundColor = [UIColor grayColor];

    [self addSubview:imageView];
    _imageViewHeader = imageView;
    //
//    UIButton * buttonRefresh = [UIButton buttonWithType:UIButtonTypeCustom];
//    buttonRefresh.frame = CGRectMake(50, 5, labelName.frame.size.width, 40);
//    [buttonRefresh setTitle:@"refresh" forState:UIControlStateNormal];
//    [buttonRefresh addTarget:self action:@selector(buttonTouch) forControlEvents:UIControlEventTouchUpInside];
//    [self addSubview:buttonRefresh];
//    _buttonRefersh = buttonRefresh;
}

- (void)refreshUI {
    [[SZDataLayer shareDataLayer] refreshDataWithBolck:^(NSArray *array) {
        SZModelAccount * model = [array lastObject];
        self.labelName.text = model.name;
        [self.imageViewHeader sd_setImageWithURL:[NSURL URLWithString:model.url]];
    }];
}












@end
