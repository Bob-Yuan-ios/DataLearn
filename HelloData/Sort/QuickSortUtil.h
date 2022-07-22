//
//  QuickSortUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuickSortUtil : NSObject

/// 归并排序
/// @param arr 需要排序的数组
+ (void)mergeSort:(NSMutableArray *)arr;

@end

NS_ASSUME_NONNULL_END
