//
//  StackUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import "StackUtil.h"

@interface StackUtil ()

@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) NSInteger totalElement;

@property (nonatomic, strong) NSMutableArray<NSString *> *items;

@end

@implementation StackUtil
 

+ (BOOL)pushLinkData:(LinkData *)data withHeadNode:(LinkData *)headNode{
    
    NSLog(@"入栈元素：%ld", (long)data.data);
    
    if (!data || ![data isKindOfClass:[LinkData class]]) return NO;
    
    LinkData *guardNode = headNode.next ? headNode.next : headNode;

    while (guardNode.next) {
        guardNode = guardNode.next;
    }
    
    guardNode.next = data;
    data.pre = guardNode;
    headNode.pre = data;
    
    return YES;
}

+ (LinkData *)popLinkDataWithHeadNode:(LinkData *)headNode{
    
    if (!headNode) return nil;

    LinkData *preData = headNode.pre;

    if (!preData) {
        NSLog(@"出栈头节点#####：%ld", (long)headNode.data);
        headNode = nil;
        return preData;
    }
    NSLog(@"出栈节点：%ld", (long)preData.data);
   
    if (preData.pre == headNode) {
        headNode.pre = nil;
        headNode.next = nil;
        return preData;
    }
        
    headNode.pre = preData.pre;
    preData.pre.next = nil;
    
    return preData;
}
@end
