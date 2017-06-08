//
//  UIView+frame.h
//  链式语法524
//
//  Created by 王新宇 on 2017/5/24.
//  Copyright © 2017年 王新宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (frame)

- (UIView *(^)(CGFloat width))width;
- (UIView *(^)(CGFloat height))height;
- (UIView *(^)(CGFloat x))x;
- (UIView *(^)(CGFloat y))y;
- (UIView *(^)(UIColor *color))color;
- (UIView *(^)(UIView *fatherView))father;

@end
