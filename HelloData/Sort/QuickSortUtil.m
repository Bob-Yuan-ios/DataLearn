//
//  QuickSortUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/20.
//

#import "QuickSortUtil.h"

@implementation QuickSortUtil


/// 归并排序
/// @param arr 需要排序的数组
+ (void)mergeSort:(NSMutableArray *)arr{
    NSMutableArray *temp = [NSMutableArray arrayWithCapacity:arr.count];
    [QuickSortUtil sortAction:arr leftIndex:0 rightIndex:(arr.count - 1) tempArr:temp];
}


/// 归并排序
/// @param arr 需要排序的数组
/// @param left 左哨兵
/// @param right 右哨兵
/// @param temp 临时存放数据的数组
+ (void)sortAction:(NSMutableArray *)arr leftIndex:(NSInteger)left rightIndex:(NSInteger)right tempArr:(NSMutableArray *)temp{
    if (left < right) {
        NSInteger middle = (left + right)/2;
        
        // 左边排序；使左子序列有序
        [QuickSortUtil sortAction:arr leftIndex:left rightIndex:middle tempArr:temp];
        
        // 右边排序；使右子序列有序
        [QuickSortUtil sortAction:arr leftIndex:(middle + 1) rightIndex:right tempArr:temp];
        
        // 将两个有序子数组合并
        [QuickSortUtil mergeAction:arr leftIndex:left middleIndex:middle rightIndex:right tempArr:temp];
    }
    
}

+ (void)mergeAction:(NSMutableArray *)arr leftIndex:(NSInteger)left middleIndex:(NSInteger)middle
         rightIndex:(NSInteger)right tempArr:(NSMutableArray *)temp{
    
    NSInteger i = left;
    NSInteger j = middle + 1;
    NSInteger t = 0;
    while (i <= middle && j <= right) {
        if([arr[i] integerValue] <= [arr[j] integerValue]){
            temp[t++] = arr[i++];
        }else{
            temp[t++] = arr[j++];
        }
    }
    
    // 将左边剩余元素填充到temp
    while (i <= middle) {
        temp[t++] = arr[i++];
    }
    
    // 将右边剩余元素填充到temp
    while (j <= right) {
        temp[t++] = arr[j++];
    }
    
    t = 0;
    // 将temp中的元素拷贝到原数组
    while (left <= right) {
        arr[left++] = temp[t++];
    }
}
@end
