//
//  UIView+XibExtend.m
//  TreatHeart_Patient
//
//  Created by Z_x. on 2018/4/28.
//  Copyright © 2018年 Z_x.. All rights reserved.
//

#import "UIView+XibExtend.h"
#import <objc/runtime.h>

@implementation UIView (XibExtend)
-(void)awakeFromNib {
    [super awakeFromNib];

}
- (CGFloat)cornerRadius {
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    objc_setAssociatedObject(self, @selector(cornerRadius), @(cornerRadius), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (CGFloat)borderWidth {
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = YES;
    objc_setAssociatedObject(self, @selector(borderWidth), @(borderWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (UIColor *)borderColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
    objc_setAssociatedObject(self, @selector(borderColor), borderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
