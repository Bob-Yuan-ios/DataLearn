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

@implementation DataTest

+ (void)testLinkData{
    
//    LinkData *head = [LinkData constructNodeWithData:0];
//
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


@end
