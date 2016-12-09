//
//  SZViewAccount.h
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface SZViewAccount : UIView

@property (nonatomic, weak) UILabel * labelName;
@property (nonatomic, weak) UIImageView * imageViewHeader;
@property (nonatomic, weak) UIButton * buttonRefersh;

- (void)refreshUI;

@end
