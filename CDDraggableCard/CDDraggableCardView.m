//
//  CDDraggableCardView.m
//  CDProgramme
//
//  Created by 吴文海 on 2018/9/10.
//  Copyright © 2018年 ChangDao. All rights reserved.
//

#import "CDDraggableCardView.h"

@implementation CDDraggableCardView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self defaultStyle];
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self defaultStyle];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self defaultStyle];
}

- (void)defaultStyle {
    
    self.userInteractionEnabled = YES;
    
    self.layer.shadowColor = [UIColor colorWithRed: 0 green:0 blue: 0 alpha: 0.14].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowRadius = 8.0f;
    self.layer.shadowOpacity = 0.14f;
    self.layer.masksToBounds = NO;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.layer.cornerRadius].CGPath;
}

- (void)cc_layoutSubviews {
    
}

@end
