//
//  QueueUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/11.
//

#import "QueueUtil.h"

@implementation QueueUtil

+ (BOOL)enQueue:(NSMutableArray *)queue head:(int *)head tail:(int *)tail item:(NSString *)item{
    
    int headValue = *head;
    int tailValue = *tail;
    
    if (0 == queue.count - tailValue) {
        if (0 == headValue) return NO;

        for (int i = headValue; i < tailValue; i++) {
            queue[i - headValue] = queue[i];
        }
        
        tailValue -= headValue;
        headValue = 0;
    }
    
    queue[tailValue] = item;
    tailValue++;

    *head = headValue;
    *tail = tailValue;
    
    return YES;
}

+ (BOOL)deQueueHead:(int *)head tail:(int *)tail{
    
    int headValue = *head;
    int tailValue = *tail;
    
    if (0 == headValue - tailValue) return NO;
    
    headValue++;
    *head = headValue;
    
    return YES;
}
@end
