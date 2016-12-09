//
//  SZDataLayer.m
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import "SZDataLayer.h"
#import "SZNetWorkLayer.h"

static SZDataLayer * dataLayer;

@interface SZDataLayer ()

@property (nonatomic, copy) void(^block)(NSArray *arrayModle);

@end

@implementation SZDataLayer

+ (instancetype)shareDataLayer {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataLayer = [[SZDataLayer alloc] init];
    });
    return dataLayer;
}

- (NSArray *)arrayData {
    if (!_arrayData) {
        SZDataLayer * weakSelf = self;
        [SZNetWorkLayer loadDataWithBlock:^(BOOL isSuccess, NSArray *arrayModle) {
            if (isSuccess) {
                _arrayData = arrayModle;
                if (weakSelf.block) {
                    weakSelf.block(arrayModle);
                }
            } else {
                
            }
        }];
        return nil;
    }
    return _arrayData;
}

- (void)refreshDataWithBolck:(void(^)(NSArray * array))block {
    if (block) {
        _block = block;
        [SZNetWorkLayer loadDataWithBlock:^(BOOL isSuccess, NSArray *arrayModle) {
            if (isSuccess) {
                _arrayData = arrayModle;
                block(arrayModle);
            }
        }];
    }
}

@end
