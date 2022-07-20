//
//  NormalSortUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/12.
//

#import "NormalSortUtil.h"

@implementation NormalSortUtil

+ (void)bubbleSort:(NSMutableArray *)arr cnt:(NSInteger)n{
    
    if(n <= 1) return;
    
    for (int i = 0; i < n; i++) {
        
        bool flag = false;
        for (int j = 0; j < n - i - 1; j++) {
            
            NSNumber *first = arr[j];
            NSNumber *second = arr[j + 1];
            if (NSOrderedDescending == [first compare:second]) {
                
                NSNumber *tmp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = tmp;
                flag = true;
            }
        }
        
        if (!flag) break;
    }
}


+ (void)insertSort:(NSMutableArray *)arr cnt:(NSInteger)n{
    
    if (n <= 1) return;
    
    for (int i = 1; i < n; i++) {
        
        NSNumber *value = arr[i];
        int j = i - 1;

        for ( ; j >= 0; --j) {
            
            NSNumber *first = arr[j];
            if (NSOrderedAscending != [first compare:value]) break;
            arr[j + 1] = arr[j];
        }
        
        arr[j + 1] = value;
    }
}

@end
