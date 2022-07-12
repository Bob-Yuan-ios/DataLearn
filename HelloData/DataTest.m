//
//  DataTest.m
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import "DataTest.h"
#import "LinkUtil.h"
#import "LinkData.h"
#import "StackUtil.h"
#import "QueueUtil.h"
#import "RecursionUtil.h"
#import "SortUtil.h"

@implementation DataTest

+ (void)testCase{
    [DataTest testSort];
}

+ (void)testSort{
//    NSMutableArray *arr = [@[@(1), @(-1), @(9), @(8), @(6), @(17)] mutableCopy];
//    [SortUtil bubbleSort:arr cnt:arr.count];
    
    NSMutableArray *arr = [@[@(9), @(8), @(7), @(6), @(5), @(4)] mutableCopy];
    [SortUtil insertSort:arr cnt:arr.count];
    NSLog(@"after insertSort is:%@", arr);
}

+ (void)testRecursion{
    NSMutableDictionary *dic = [@{} mutableCopy];
    for (int i = 1; i < 10; i++) {
        NSInteger result = [RecursionUtil howMethod:i containValue:dic];
        NSLog(@"recusion(%d) value is:%ld", i, (long)result);
    }
}

/// 测试链表
+ (void)testLinkData{
    
    LinkData *head = [LinkData constructNodeWithData:0];
    LinkData *curHead = head;
    for (int i = 1; i < 100; i++) {
        BOOL refreshLink = [LinkUtil refreshLinkWithData:i fromHeadWithNode:curHead];
        if (!refreshLink) {
            curHead = [LinkUtil insertNode:[LinkData constructNodeWithData:i] fromHeadWithNode:curHead];
        }
        [LinkUtil printFromHeadWithNode:curHead printPrefixText:[NSString stringWithFormat:@"正向遍历(%d):", i]];

        if(i%5 == 0){
            BOOL refreshLink = [LinkUtil refreshLinkWithData:i fromHeadWithNode:curHead];
            if (!refreshLink) {
                curHead = [LinkUtil insertNode:[LinkData constructNodeWithData:i] fromHeadWithNode:curHead];
            }
            [LinkUtil printFromHeadWithNode:curHead printPrefixText:[NSString stringWithFormat:@"随机循环(%d):", i]];
        }
    }
}


/// 测试栈
+ (void)testStackData{
    
    LinkData *headNode = [LinkData constructNodeWithData:1];
    for ( int i = 101; i < 104; i++) {
        [StackUtil pushLinkData:[LinkData constructNodeWithData:i] withHeadNode:headNode];
        [LinkUtil printFromHeadWithNode:headNode printPrefixText:@"遍历当前栈（入栈）"];
    }

    LinkData *guardNode = [StackUtil popLinkDataWithHeadNode:headNode];
    while (guardNode) {
        [LinkUtil printFromHeadWithNode:headNode printPrefixText:@"遍历当前栈（出栈）"];
        guardNode = [StackUtil popLinkDataWithHeadNode:headNode];
    }

    NSLog(@"guardNode information is:%@", guardNode);
}


///  测试队列
+ (void)testQueueData{
    
    NSInteger cnt = 3;
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:cnt];
    for (int i = 0; i < cnt; i++) {
        [arr addObject:[@(-1) stringValue]];
    }
    NSLog(@"队列初始化数据：%@", arr);

    int head = 0;
    int tail = 0;

    for (int i = 0; i < 2 + cnt; i++) {
        [QueueUtil enQueue:arr head:(&head) tail:(&tail) item:[@(i) stringValue]];
    }
    NSLog(@"入队列操作完成：%@", arr);
    
    for(int i = 0; i < 2 + cnt; i++){
        NSString *item = [QueueUtil deQueue:arr head:(&head) tail:(&tail)];
        NSLog(@"出队列操作分步执行：%@~~~~%@====%@", item, @(head), @(tail));
        if (0 == (head - tail)) {
            NSLog(@"队列清空后数据：%@", arr);
            break;
        }
    }
}
@end
