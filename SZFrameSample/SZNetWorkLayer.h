//
//  SZNetWorkLayer.h
//  SZFrameSample
//
//  Created by Summer on 2016/12/8.
//  Copyright © 2016年 Summer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SZNetWorkLayer : NSObject

+ (void)loadDataWithBlock:(void(^)(BOOL isSuccess, NSArray * arrayModle))blockLoadData;

@end
