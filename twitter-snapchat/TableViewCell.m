//
//  TableViewCell.m
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

+ (NSString *)reuseIdentifier {
    return @"CustomCellIdentifier";
}

- (void)awakeFromNib {
    // Initialization code
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, self.frame.size.height/2 -10, 20, 20) cornerRadius:4];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = [path CGPath];
    shapeLayer.lineWidth = 2.0;
    shapeLayer.strokeColor = [[UIColor colorWithRed:33 green:12 blue:145 alpha:1.0] CGColor];
    
    [self.layer addSublayer:shapeLayer];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
