//
//  CDCardView.m
//  CDDraggableCard_Example
//
//  Created by 吴文海 on 2018/11/29.
//  Copyright © 2018 Haven. All rights reserved.
//

#import "CDCardView.h"

@interface CDCardView()
@property (nonatomic, strong) UILabel *lable;
@end

@implementation CDCardView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    self.backgroundColor = [UIColor orangeColor];
    
    self.lable = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 100, 100)];
    self.lable .center = self.center;
    [self addSubview: self.lable];
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.lable.text = title;
}
@end
