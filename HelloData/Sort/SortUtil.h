//
//  SortUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortUtil : NSObject

/// 冒泡排序 ： 升序排序
/// @param arr 需要排序的数组
/// @param n  数组元素个数
+ (void)bubbleSort:(NSMutableArray *)arr cnt:(NSInteger)n;

/// 插入排序 ： 升序排序
/// @param arr 需要排序的数组
/// @param n 数组元素个数
+ (void)insertSort:(NSMutableArray *)arr cnt:(NSInteger)n;

@end

NS_ASSUME_NONNULL_END
