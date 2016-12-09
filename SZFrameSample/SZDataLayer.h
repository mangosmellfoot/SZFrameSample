//
//  SZDataLayer.h
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SZDataLayer : NSObject

@property (nonatomic, strong) NSArray * arrayData;

+ (instancetype)shareDataLayer;
- (void)refreshDataWithBolck:(void(^)(NSArray * array))block;

@end
