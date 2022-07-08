//
//  LinkUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import "LinkUtil.h"

#define MAXCOUNT 10

@implementation LinkUtil

+ (void)insertNodeAfterHead:(LinkData *)newNode headNode:(LinkData *)headNode{
    
    if (!headNode || !newNode) return;
    
    if (headNode.next == nil) {
        headNode.next = newNode;
        return;
    }
    
    newNode.next = headNode.next;
    headNode.next = newNode;
}


+ (NSArray<NSNumber *> *)printFromHeadWithNode:(LinkData *)headNode printPrefixText:(NSString *)text{
    
    if (!headNode) {
        NSLog(@"%@: 空数据", text);
        return nil;
    }

    LinkData *pNode = headNode;
    NSMutableArray *items = [NSMutableArray array];

    while (pNode) {
        [items addObject:@(pNode.data)];
        pNode = pNode.next;
    }
    
    NSLog(@"%@: %@", text, [items componentsJoinedByString:@"->"]);
    return items;
}
 

+ (LinkData *)insertNode:(LinkData *)newNode fromHeadWithNode:(LinkData *)headNode {
    
    if (!headNode.next) {
        headNode.pre = newNode;
 
        newNode.pre = headNode;
        newNode.next = headNode;

        return newNode;
    }
    
    if (newNode.data < MAXCOUNT) {
        
        newNode.pre = headNode.pre;
        newNode.next = headNode;
        
        headNode.pre = newNode;
        return newNode;
    }
    
    LinkData *tempNode = headNode.pre.pre;
 
    newNode.pre = tempNode;
    newNode.next = headNode;

    headNode.pre = newNode;
    tempNode.next = nil;
    
    return newNode;
}

+ (BOOL)refreshLinkWithData:(NSInteger)data fromHeadWithNode:(LinkData *)headNode{
    
    if (!headNode) return NO;
    if (0 == headNode.data - data) return YES;

    BOOL findElement = NO;
    LinkData *curNode = headNode.next;
    while (curNode && (curNode.data != headNode.data)) {
        //
        if (0 == curNode.data - data) {
            
            LinkData *tempNode = curNode;
            
            curNode.pre = headNode.pre;
            curNode.next = headNode.next;
            
            headNode.pre = tempNode.pre;
            headNode.next = tempNode.next;
            
            findElement = YES;
            break;
        }
        curNode = curNode.next;
    }
    
    return findElement;
}

+ (void)reverseNode{
    
}
@end
