//
//  AppsModel.h
//  SeverTest
//
//  Created by yunpengzhang on 16/8/20.
//  Copyright © 2016年 yunpengzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppsModel : NSObject
/// APP名称
@property (copy, nonatomic) NSString *name;
/// APP下载量
@property (copy, nonatomic) NSString *download;
/// APP图标
@property (copy, nonatomic) NSString *icon;

+(instancetype)appWithDict:(NSDictionary *)dict;
@end
