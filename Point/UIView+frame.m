//
//  UIView+frame.m
//  链式语法524
//
//  Created by 王新宇 on 2017/5/24.
//  Copyright © 2017年 王新宇. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

- (UIView* (^)(CGFloat))width {
    return ^(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}

- (UIView* (^)(CGFloat height))height {
    return ^(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView* (^)(CGFloat x))x {
    return ^(CGFloat x) {
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}

- (UIView* (^)(CGFloat y))y {
    return ^(CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(UIColor *color))color {
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

- (UIView *(^)(UIView *fatherView))father {
    return ^(UIView *fatherView) {
        [fatherView addSubview:self];
        return self;
    };
}

@end
