//
//  CDDraggableCardView.h
//  CDProgramme
//
//  Created by 吴文海 on 2018/9/10.
//  Copyright © 2018年 ChangDao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CDDraggableConfig.h"

@interface CDDraggableCardView : UIView

@property (nonatomic) CGAffineTransform originalTransform;

- (void)cc_layoutSubviews;

@end
