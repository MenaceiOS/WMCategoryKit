//
//  NSDictionary+Safe.h
//  LargeScaleTechnology
//
//  Created by Aaron on 2021/7/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define WMDictionaryOfVariableBindings(...) [NSDictionary _WMDictionaryOfVariableBindings:@"" # __VA_ARGS__, __VA_ARGS__]

@interface NSDictionary (Safe)
/**
 安全获取value值
 
 @param aKey key
 @return id
 */
- (id)objectForKeyCheck:(id)aKey;
 
/**
 模仿系统的对象生成字典的宏定义：NSDictionaryOfVariableBindings(...)
 if v1 = @"something"; v2 = nil; v3 = @"something"; v4 = @"";
 ZXDictionaryOfVariableBindings(v1, v2, v3) is equivalent to [NSDictionary dictionaryWithObjectsAndKeys:v1, @"v1", v3, @"v3", nil];
 并且参数的值可为nil,@"", 会自动去除值为nil, @"", @"  "等的对象
 */
+ (NSDictionary *)_WMDictionaryOfVariableBindings:(NSString *)firstArg, ...;
@end

NS_ASSUME_NONNULL_END
