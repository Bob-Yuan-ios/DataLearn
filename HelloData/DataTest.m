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

@implementation DataTest

+ (void)testLinkData{
    
//    LinkData *head = [LinkData constructNodeWithData:0];
//    LinkData *curHead = head;
//    for (int i = 1; i < 100; i++) {
//        BOOL refreshLink = [LinkUtil refreshLinkWithData:i fromHeadWithNode:curHead];
//        if (!refreshLink) {
//            curHead = [LinkUtil insertNode:[LinkData constructNodeWithData:i] fromHeadWithNode:curHead];
//        }
//        [LinkUtil printFromHeadWithNode:curHead printPrefixText:[NSString stringWithFormat:@"正向遍历(%d):", i]];
//
//        if(i%5 == 0){
//            BOOL refreshLink = [LinkUtil refreshLinkWithData:i fromHeadWithNode:curHead];
//            if (!refreshLink) {
//                curHead = [LinkUtil insertNode:[LinkData constructNodeWithData:i] fromHeadWithNode:curHead];
//            }
//            [LinkUtil printFromHeadWithNode:curHead printPrefixText:[NSString stringWithFormat:@"随机循环(%d):", i]];
//        }
//    }
    
//    LinkData *headNode = [LinkData constructNodeWithData:1];
//    for ( int i = 101; i < 104; i++) {
//        [StackUtil pushLinkData:[LinkData constructNodeWithData:i] withHeadNode:headNode];
//        [LinkUtil printFromHeadWithNode:headNode printPrefixText:@"遍历当前栈（入栈）"];
//    }
//
//    LinkData *guardNode = [StackUtil popLinkDataWithHeadNode:headNode];
//    while (guardNode) {
//        [LinkUtil printFromHeadWithNode:headNode printPrefixText:@"遍历当前栈（出栈）"];
//        guardNode = [StackUtil popLinkDataWithHeadNode:headNode];
//    }
//
//    NSLog(@"guardNode information is:%@", guardNode);
    
    NSInteger cnt = 3;
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:cnt];
    for (int i = 0; i < cnt; i++) {
        [arr addObject:[@(i) stringValue]];
    }
    
    int head = 0;
    int tail = 0;

    for (int i = 0; i < 2 + cnt; i++) {
        [QueueUtil enQueue:arr head:(&head) tail:(&tail) item:[@(i) stringValue]];
    }
    NSLog(@"初始化数据： %@", arr);
    
    [QueueUtil deQueueHead:(&head) tail:(&tail)];
    NSLog(@"出队列操作后：%@====%@", arr[head], arr[tail-1]);
    
    [QueueUtil deQueueHead:(&head) tail:(&tail)];
    NSLog(@"出队列操作后：%@====%@", arr[head], arr[tail-1]);

    [QueueUtil enQueue:arr head:(&head) tail:(&tail) item:@"World"];
    NSLog(@"入队列操作后：%@====%@", arr[head], arr[tail-1]);
}


@end
