# CDDraggableCard

[![CI Status](https://img.shields.io/travis/Haven/CDDraggableCard.svg?style=flat)](https://travis-ci.org/Haven/CDDraggableCard)
[![Version](https://img.shields.io/cocoapods/v/CDDraggableCard.svg?style=flat)](https://cocoapods.org/pods/CDDraggableCard)
[![License](https://img.shields.io/cocoapods/l/CDDraggableCard.svg?style=flat)](https://cocoapods.org/pods/CDDraggableCard)
[![Platform](https://img.shields.io/cocoapods/p/CDDraggableCard.svg?style=flat)](https://cocoapods.org/pods/CDDraggableCard)

## Example

[self.view addSubview: self.draggableContainer];

[self.draggableContainer reloadData];

// 选中item方法


(void)draggableContainer:(CDDraggableContainer *)draggableContainer cardView:(CDDraggableCardView *)cardView didSelectIndex:(NSInteger)didSelectIndex {


}

// 每次切换都会执行此方法


(void)draggableContainer:(CDDraggableContainer *)draggableContainer draggableDirection:(CDDraggableDirection)draggableDirection widthRatio:(CGFloat)widthRatio heightRatio:(CGFloat)heightRatio {


}

// 卡片画完后加载, 一般用于加载分页


(void)draggableContainer:(CDDraggableContainer *)draggableContainer finishedDraggableLastCard:(BOOL)finishedDraggableLastCard {


}

## Requirements

## Installation

CDDraggableCard is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CDDraggableCard'
```

## License

CDDraggableCard is available under the MIT license. See the LICENSE file for more info.
