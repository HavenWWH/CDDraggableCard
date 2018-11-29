//
//  CDDraggableContainer.h
//  CDProgramme
//
//  Created by 吴文海 on 2018/9/10.
//  Copyright © 2018年 ChangDao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CDDraggableConfig.h"
#import "CDDraggableCardView.h"

@class CDDraggableContainer;


/**
 Delegate
 */
@protocol CDDraggableContainerDelegate <NSObject>

- (void)draggableContainer:(CDDraggableContainer *)draggableContainer
        draggableDirection:(CDDraggableDirection)draggableDirection
                widthRatio:(CGFloat)widthRatio
               heightRatio:(CGFloat)heightRatio;

- (void)draggableContainer:(CDDraggableContainer *)draggableContainer
                  cardView:(CDDraggableCardView *)cardView
            didSelectIndex:(NSInteger)didSelectIndex;

- (void)draggableContainer:(CDDraggableContainer *)draggableContainer
 finishedDraggableLastCard:(BOOL)finishedDraggableLastCard;

@end

/**
 DataSource
 */
@protocol CDDraggableContainerDataSource <NSObject>

@required
- (CDDraggableCardView *)draggableContainer:(CDDraggableContainer *)draggableContainer
                               viewForIndex:(NSInteger)index;

- (NSInteger)numberOfIndexs;

@end

/**
 CCDraggableContainer
 */
@interface CDDraggableContainer : UIView
@property (nonatomic) NSInteger loadedIndex;
@property (nonatomic) NSMutableArray *currentCards;
@property (nonatomic, weak) IBOutlet id <CDDraggableContainerDelegate>delegate;
@property (nonatomic, weak) IBOutlet id <CDDraggableContainerDataSource>dataSource;

@property (nonatomic) CDDraggableStyle     style;
@property (nonatomic) CDDraggableDirection direction;

- (instancetype)initWithFrame:(CGRect)frame style:(CDDraggableStyle)style;
- (void)removeForDirection:(CDDraggableDirection)direction;
- (void)reloadData;

@end
