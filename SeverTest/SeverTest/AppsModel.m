//
//  AppsModel.m
//  SeverTest
//
//  Created by yunpengzhang on 16/8/20.
//  Copyright © 2016年 yunpengzhang. All rights reserved.
//

#import "AppsModel.h"

@implementation AppsModel
+(instancetype)appWithDict:(NSDictionary *)dict{
    AppsModel *model = [[AppsModel alloc]init];
    [model setValuesForKeysWithDictionary:dict];
    return model;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}
@end
