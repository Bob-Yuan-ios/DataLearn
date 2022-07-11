//
//  QueueUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QueueUtil : NSObject


/// 入队列操作
/// @param queue 队列
/// @param head 头游标
/// @param tail 尾游标
/// @param item 入队列元素
+ (BOOL)enQueue:(NSMutableArray *)queue
           head:(int *)head
           tail:(int *)tail
           item:(NSString *)item;

/// 出队操作
/// @param head 头游标
/// @param tail 尾游标
+ (BOOL)deQueueHead:(int *)head
               tail:(int *)tail;
@end

NS_ASSUME_NONNULL_END
