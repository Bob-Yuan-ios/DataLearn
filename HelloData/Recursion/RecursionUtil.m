//
//  RecursionUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/11.
//

#import "RecursionUtil.h"

@implementation RecursionUtil

+ (NSInteger)howMethod:(int)n containValue:(NSMutableDictionary *)didCal{

    // 递归终止条件
    if (0 >= n) return 0;
    if (0 == n - 1) return 1;
    if (0 == n - 2) return 2;
    
    // 避免溢出
    NSAssert(n <= 100, @"参数错误");
    
    // 避免重复计算
    if ([didCal objectForKey:@(n)]) {
        return [[didCal objectForKey:@(n)] integerValue];
    }
    
    // 递归公式
    NSInteger ret = ([self howMethod:(n - 1) containValue:didCal] +
                     [self howMethod:(n - 2) containValue:didCal]);
    [didCal setObject:@(ret) forKey:@(n)];
    
    return ret;
}
@end
