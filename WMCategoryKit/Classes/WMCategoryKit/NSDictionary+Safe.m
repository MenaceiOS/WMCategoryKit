//
//  NSDictionary+Safe.m
//  LargeScaleTechnology
//
//  Created by Aaron on 2021/7/1.
//

#import "NSDictionary+Safe.h"

@implementation NSDictionary (Safe)
- (id)objectForKeyCheck:(id)aKey{
    if ([self.allKeys containsObject:aKey]) {
        return [self objectForKey:aKey];
    }
    NSLog(@"%@", [NSThread callStackSymbols]);
    return nil;
}
 
+ (NSDictionary *)_WMDictionaryOfVariableBindings:(NSString *)firstArg, ... {
    firstArg = [firstArg stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSArray *keys = [firstArg componentsSeparatedByString:@","];
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithCapacity:keys.count];
    va_list list;
    if (firstArg) {
        va_start(list, firstArg);
        id arg;
        for (NSString *key in keys) {
            arg = va_arg(list, id);
            if (!arg || [arg isKindOfClass:[NSNull class]]) {
                continue;
            }
            NSString * keyString = key;
            if ([keyString hasPrefix:@"_"]) {
                keyString = [keyString substringFromIndex:1];
            }
            if ([arg isKindOfClass:[NSString class]]) {
                if ([[arg stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] != 0) {
                    [dic setObject:arg forKey:keyString];
                }
            } else {
                [dic setObject:arg forKey:keyString];
            }
        }
        va_end(list);
    }
    return dic;
}
@end
