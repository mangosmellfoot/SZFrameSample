//
//  SZNetWorkLayer.m
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import "SZNetWorkLayer.h"
#import "SZModelAccount.h"

@interface SZNetWorkLayer ()

@property (nonatomic, copy) void(^blockLoadData)(BOOL isSuccess, NSArray * arrayModle);

@end

@implementation SZNetWorkLayer

+ (void)loadDataWithBlock:(void(^)(BOOL isSuccess, NSArray * arrayModle))blockLoadData {
    //数据访问
    if (blockLoadData) {
        if (YES) {
            NSMutableArray * array = [NSMutableArray array];
            for (char i = 0; i < 3; i++) {
                SZModelAccount * model = [[SZModelAccount alloc] init];
                model.name = [NSString stringWithFormat:@"%@ - %d", @"summer", i];
                model.url = @"http://f.hiphotos.baidu.com/zhidao/pic/item/03087bf40ad162d9ef38523f12dfa9ec8a13cd3a.jpg";
                [array addObject:model];
            }
            blockLoadData(YES, array);
        } else {
            blockLoadData(NO, [NSArray array]);
        }
    }
}




@end
