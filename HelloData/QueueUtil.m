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
    
/*
    尾节点是队列最后一个元素
        1、当头节点 是队列第一个元素时，表示队列空间已满；不执行入队列操作
        2、当头节点 不是队列第一个元素时，入队列的数组整体迁移到队列头部，执行入队列操作
    尾节点不是队列最后一个元素：执行入队列操作
 */
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

+ (NSString *)deQueue:(NSMutableArray *)queue head:(int *)head tail:(int *)tail{
    
    int headValue = *head;
    int tailValue = *tail;
    
    if (0 == headValue - tailValue) return @"";
    
    NSMutableString *item = [queue[headValue] mutableCopy];
    queue[headValue] = [@(-1) stringValue];
    
    headValue++;
    *head = headValue;
    
    return item;
}
@end
