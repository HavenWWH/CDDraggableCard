//  CDDraggableConfig.h 
//  CDProgramme
//
//  Created by 吴文海 on 2018/9/10.
//  Copyright © 2018年 ChangDao. All rights reserved.
//

#ifndef CDDraggableConfig_h
#define CDDraggableConfig_h


/**
 拽到方向枚举
 */
typedef NS_OPTIONS(NSInteger, CDDraggableDirection) {
    CDDraggableDirectionDefault     = 0,
    CDDraggableDirectionLeft        = 1 << 0,
    CDDraggableDirectionRight       = 1 << 1
};

typedef NS_OPTIONS(NSInteger, CDDraggableStyle) {
    CDDraggableStyleUpOverlay   = 0,
    CDDraggableStyleDownOverlay = 1
};

#define CDDragWidth  [UIScreen mainScreen].bounds.size.width
#define CDDragHeight [UIScreen mainScreen].bounds.size.height

static const CGFloat kBoundaryRatio   = 0.8f;
static const CGFloat kSecondCardScale = 0.95f;
static const CGFloat kTherdCardScale  = 0.9f;

static const CGFloat kCardEdage        = 0.0f;
static const CGFloat kContainerEdage   = 0.0;
static const CGFloat kNavigationHeight = 0.0;

static const CGFloat kVisibleCount     = 3;

#endif /* CCDraggableConfig_h */
