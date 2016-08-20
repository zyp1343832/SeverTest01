//
//  AppsCell.m
//  SeverTest
//
//  Created by yunpengzhang on 16/8/20.
//  Copyright © 2016年 yunpengzhang. All rights reserved.
//

#import "AppsCell.h"
#import "UIImageView+WebCache.h"

@interface AppsCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconImaage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *downLoadLabel;


@end
@implementation AppsCell
-(void)setApp:(AppsModel *)app{
    _app = app;
    
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
