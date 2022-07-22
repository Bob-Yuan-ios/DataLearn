//
//  RecursionUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RecursionUtil : NSObject

/// 递归 思路f(n) = f(n - 1) + f(n - 2)
/// @param n  递归层级
/// @param didCal 缓存map（避免重复递归）
+ (NSInteger)howMethod:(int)n containValue:(NSMutableDictionary *)didCal;

@end

NS_ASSUME_NONNULL_END
