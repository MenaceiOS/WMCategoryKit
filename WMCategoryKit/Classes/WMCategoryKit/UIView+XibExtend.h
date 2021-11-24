//
//  UIView+XibExtend.h
//  TreatHeart_Patient
//
//  Created by Z_x. on 2018/4/28.
//  Copyright © 2018年 Z_x.. All rights reserved.
//

#import <UIKit/UIKit.h>
//IB_DESIGNABLE
@interface UIView (XibExtend)
@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign)IBInspectable CGFloat borderWidth;
@property (nonatomic, strong)IBInspectable UIColor *borderColor;
@end
