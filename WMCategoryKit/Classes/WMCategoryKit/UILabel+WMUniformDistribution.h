//
//  UILabel+WMUniformDistribution.h
//  ShrimpPassengerCarWash
//
//  Created by zmy on 2019/3/28.
//  Copyright © 2019 Aaron. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (WMUniformDistribution)
//两端对齐
- (void)textAlignmentLeftAndRight;

//指定Label以最后的冒号对齐的width两端对齐
- (void)textAlignmentLeftAndRightWith:(CGFloat)labelWidth;

@end

NS_ASSUME_NONNULL_END
