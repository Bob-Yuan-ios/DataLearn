//
//  DataTest.m
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import "DataTest.h"
#import "LinkUtil.h"
#import "LinkData.h"

@implementation DataTest

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
@end
