//
//  ViewController.m
//  SeverTest
//
//  Created by yunpengzhang on 16/8/20.
//  Copyright © 2016年 yunpengzhang. All rights reserved.
//
//https://raw.githubusercontent.com/zyp1343832/SeverTest01/master/apps.json
#import "ViewController.h"
#import "AFNetworking.h"
#import "AppsModel.h"

@interface ViewController () <UITableViewDataSource>

@end

@implementation ViewController
{
    NSArray *_appsList;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadJsonData];
}
-(void)loadJsonData{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url =@"//https://raw.githubusercontent.com/zyp1343832/SeverTest01/master/apps.json";
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSArray* responseObject) {
        NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:responseObject.count];
        [responseObject enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            AppsModel *apps = [AppsModel appWithDict:obj];
            [arrM addObject:apps];
        }];
        _appsList = arrM.copy;
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _appsList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AppsList" forIndexPath:indexPath];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
