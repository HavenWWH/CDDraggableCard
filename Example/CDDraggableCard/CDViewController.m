//
//  CDViewController.m
//  CDDraggableCard
//
//  Created by Haven on 11/29/2018.
//  Copyright (c) 2018 Haven. All rights reserved.
//

#import "CDViewController.h"
#import "CDDraggableContainer.h"

#import "CDCardView.h"

@interface CDViewController ()<CDDraggableContainerDelegate, CDDraggableContainerDataSource>
@property (nonatomic, strong) CDDraggableContainer *draggableContainer;
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation CDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.dataArray = @[@"11", @"22",@"33", @"44", @"55", @"11", @"22",@"33", @"44", @"55", @"11", @"22",@"33", @"44", @"55", @"11", @"22",@"33", @"44", @"55"];
    [self.view addSubview: self.draggableContainer];
    
    [self.draggableContainer reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CDDraggableContainer *)draggableContainer {
    
    if (!_draggableContainer) {
        _draggableContainer = [[CDDraggableContainer alloc] initWithFrame: CGRectMake(20, 100, 200, 300) style: CDDraggableStyleDownOverlay];
        _draggableContainer.delegate = self;
        _draggableContainer.dataSource = self;
        _draggableContainer.center = self.view.center;
    }
    return _draggableContainer;
}

#pragma mark - CCDraggableContainer DataSource

- (NSInteger)numberOfIndexs {
    
    return self.dataArray.count;
}
- (CDDraggableCardView *)draggableContainer:(CDDraggableContainer *)draggableContainer viewForIndex:(NSInteger)index {
    
    CDCardView *card = [[CDCardView alloc] initWithFrame: draggableContainer.bounds];
    card.title = self.dataArray[index];
    return card;
}

#pragma mark - CDDraggableContainerDelegate
- (void)draggableContainer:(CDDraggableContainer *)draggableContainer cardView:(CDDraggableCardView *)cardView didSelectIndex:(NSInteger)didSelectIndex {
    
    NSLog(@"选中index%@", @(didSelectIndex));
}

// 每次切换都会执行此方法
- (void)draggableContainer:(CDDraggableContainer *)draggableContainer draggableDirection:(CDDraggableDirection)draggableDirection widthRatio:(CGFloat)widthRatio heightRatio:(CGFloat)heightRatio {
    
    NSLog(@"widthRatio : %@ heightRatio :%@", @(widthRatio), @(heightRatio));
}

- (void)draggableContainer:(CDDraggableContainer *)draggableContainer finishedDraggableLastCard:(BOOL)finishedDraggableLastCard {
    
    NSLog(@"卡片画完后加载, 一般用于加载分页");
}


- (NSArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [[NSArray alloc] init];
    }
    return _dataArray;
}
@end
